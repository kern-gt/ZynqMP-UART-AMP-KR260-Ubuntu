# UART-AMP向けCortex-R5ファームウェアプロジェクト
[Click here for the English version](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/r5_firmware.vitis_unified_ide/README.md)
## 概要
このフォルダにはVitis Unified IDE v2024.1.1用のCortex-R5(CR5)ファームウェアプロジェクトが格納されています.
エコーバックテストのサンプルで使用するCR5-0、CR5-1用のELFの元となるソースコードになります.

## 使用方法
このフォルダには以下のものが含まれています.
* FreeRTOSベースのループバックアプリ部分のソースコード(app_src_r5_x)
* Vitis Unified IDEのエクスポートプロジェクトZIP

### 手順１：Vitisにプロジェクトをインポート
1. このフォルダ(r5_firmware.vitis_classic)をワークスペースに設定して起動
1. "File > import"からインポートウィンドウを起動
1. "import from Archive"に _r5_firmware.zip_ を選択
1. "Components"に全てを選択
1. "Finish"

### 手順２：アプリケーションソースコードの取り込み
_app_src_r5_0/_ 、 _app_src_r5_1/_ フォルダにループバックファームウェアのコードが格納されています.
Vitisプロジェクト内にも同じファイル名のソースコードが格納されていますが、 _app_src_r5_x/_ のものが最新のものとなります.
```
app_src_r5_0
├── app
│   ├── inc
│   │   ├── hardware_def.h
│   │   ├── led.h
│   │   ├── uart.h
│   │   └── user_def.h
│   ├── led.c
│   └── uart.c
├── lscript.ld
├── main.c
└── test
    ├── inc
    │   ├── reg_dump.h
    │   ├── uart_loopback_test.h
    │   ├── uart_recv_test.h
    │   └── uart_send_test.h
    ├── reg_dump.c
    ├── uart_loopback_test.c
    ├── uart_recv_test.c
    ├── uart_send_test.c
    └── uart_send_test_data.c

```
Vitisプロジェクトの以下のフォルダ以下に上書きします.
```
app_src_r5_0/* => app_echo_uart_r5_0/src/
app_src_r5_1/* => app_echo_uart_r5_1/src/
```
以上で、コードのビルドが出来るようになります.
また、CR5の単体ステップ実行でバッグをする際にJtagbootモードへの移行が必要になります.Kria SOM向けにJtag bootモードに移行できるTCLコマンドを記述したShellスクリプトを用意してあります.  

[jtag_tcl/switch_jtagboot.sh](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/tree/main/jtag_tcl)

プロジェクトではCA53でFSBLを実行するように設定していますので、CR5のJtagデバッグはすぐ行うことが出来ます.

<br><br><br>

## 開発者向け情報

### Microblazeのファームウェアについて
MicroblazeはVitis Classic IDEでプロジェクトを構築しています.
詳細はMicroblaze用フォルダを参照してください
[microblaze_firmware.vitis_classic/](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/tree/main/microblaze_firmware.vitis_classic)  
  
### ファームウェアの機能
現在以下の機能があります.
* ハートビートLED
* 3つのUARTテストアプリをコンパイル時に選択

**UARTテストアプリの機能**  
* エコーバックテスト用のループバック(デフォルト)
* 送信のみテスト(テストデータはコード内定義)
* 受信のみテスト(トレースメモリに記録)

UARTテストアプリはmain.cでマクロを切り替えてリビルドしてください.

**ハートビートLED**  
サブコア側の動作確認をするため、CR5とMicroblazeのそれぞれのコアでLEDを駆動します.
KR260ボードの場合は以下の割当てにしています.
* CR5-0 : UF1_LED : F8端子 : LVCMOS18
* CR5-1 : UF2_LED : E8端子 : LVCMOS18
* CR5-0 : SFP_LED1

### ファームウェアの構造
ファームウェアは以下の要素に分けられています.
* ループバックテストor送信テストor受信テストのテストタスク
* UARTドライバタスク
* ハートビートLEDタスク
* FreeRTOS

**テストタスクとUARTドライバタスク**  
```mermaid
graph TD;
        Node1([AXI-UARTLite RX])-->Node3[UART RX ISR];
        Node3[UART RX ISR]-->Node2[UART RX Task];
        Node2[UART RX Task]-.->Node4[Test Task];
        Node4[Test Task]-.->Node5[UART RX Task];
        Node5[UART RX Task]-->Node6([AXI-UARTLite TX]);
        Node6([AXI-UARTLite TX])-->Node7[UART TX ISR];
        Node7[UART TX ISR]-->Node5[UART RX Task];
```
図の点線矢印の部分はFreeRTOSの _Stream Buffer_ を使用しています.
_Test Task_ の部分を置き換えることで、ユーザ独自のアプリケーションを開発できるようになります.
_Stream Buffer_ のソケット名は以下としています.
* UART 受信 : uart_recv_buf
* UART 送信 : uart_send_buf

ループバックテスト用タスクの例では以下のように使用しています.
```
uint8_t uart_loopback_buf[REQ_RECV_DATA_BYTES];
for(;;)
    {
        get_bytes_cnt = xStreamBufferReceive(   uart_recv_buf,
                                                uart_loopback_buf,
                                                REQ_RECV_DATA_BYTES,
                                                20/ portTICK_PERIOD_MS);

        if(get_bytes_cnt > 0)
        {
            cnt = xStreamBufferSend(uart_send_buf,
                                    uart_loopback_buf,
                                    get_bytes_cnt,
                                    20/ portTICK_PERIOD_MS);

            if(cnt == 0){
                xil_printf( "buffer of uart_send_buf is full.\n" );
            }
        }
    }
```
<br><br>

### Linkerとメモリマップについて
CR5を起動するには実行ファイルのELFをTCM(密結合メモリ)とDRAMに配置するローダが必要になります.このUART-AMPではOpenAMPのELFロード及びコアの起動・停止管理を担う、Remoteproc Linuxドライバを使用します.
RemoteprocドライバはXilinx認定Ubuntuには予め含まれていますが、デバイスツリーが対応していないため、デフォルトで使用できません.
デバイスツリーには以下の記述が必要です.
* サブコアとの共有メモリを予約領域として定義
* TCMの定義
* CR5コアの定義
* CR5コアのLockStep or Split動作の可否
* IPI(コア間割込み)とmailboxの定義

IPIとMailboxについてはおそらく未使用になりますが、一応定義します.認定UbuntuでOpenAMPのサポートがまだないので(2024/7)、Webの情報を集めて作成しました.当然動作保証はありません.
OpenAMPのデバイスツリーは以下の場所にあります.  
CR5のSplit(2コアモード)
[openamp_dts/zynqmp_openamp_r5_split.dtsi](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/openamp_dts/zynqmp_openamp_r5_split.dtsi)

**CR5のメモリマップ**  
CR5は主に次のセクションをDRAMに配置しています.
* text
* bss
* resource_table

OpenAMP用のデバイスツリーではこの領域を次の記述で予約領域としています.
* reserved-memory/rproc@3ed00000,size=0x40000 : CR5-0
* reserved-memory/rproc@3ef00000,size=0x40000 : CR5-1

CR5プロジェクトの各コアのLinkerスクリプトも同じ領域を指定するようにします.これを間違うとクラッシュする可能性があります.
* CR5-0 : psu_ddr_S_AXI_BASEADDR : ORIGIN = 0x3ED00000, LENGTH = 0x00040000
* CR5-1 : psu_ddr_S_AXI_BASEADDR : ORIGIN = 0x3EF00000, LENGTH = 0x00040000

resource_tableとはOpenAMP固有のデータ定義でPRMsgと呼ばれるOpenAMPのコア間通信に用いられます.今回UARTでRPMsgの代わりを行うため必要ないので空ですが、RemoteprocがELFをロードする際、このresource_tableセクションを解析してRPMegに情報を渡す役割をするので、セクションを定義する必要があります.
試しにELFのセクションの一覧を表示してみます.
```
$ source /tools/Xilinx/Vitis/2024.1/settings64.sh
$ armr5-none-eabi-size --format=sysv app_echo_uart_r5_0.elf
app_echo_uart_r5_0.elf  :
section              size         addr
.vectors            0x660          0x0
.text              0xba34   0x3ed00000
.init                 0xc        0x660
.fini                 0xc        0x66c
.rodata            0x1bb9        0x678
.data               0x480       0x2238
.drvcfg_sec         0xdc4       0x26b8
.bootdata           0x180       0x3480
.eh_frame             0x4       0x3600
.ARM.exidx            0x8       0x3604
.init_array           0x8       0x360c
.fini_array           0x4       0x3614
.ARM.attributes      0x2f       0x3618
.bss              0x191f0   0x3ed20100
.heap              0x1408       0x3618
.stack             0x3800      0x20000
.resource_table       0x0   0x3ed20000
.comment             0x12          0x0
Total             0x2ce7a
```

resource_tableセクションが物理アドレス=0x3ed20000で領域サイズ0になっています.
