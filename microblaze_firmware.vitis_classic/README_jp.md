# UART-AMP向けMicroblazeファームウェアプロジェクト
[Click here for the English version]()
## 概要
このフォルダにはVitis Classic IDE v2024.1用のMicroblazeファームウェアプロジェクトが格納されています.
エコーバックテストのサンプルでBitstreamに結合されるMicroblaze用のELFの元となるソースコードになります.

## 使用方法
このフォルダには以下のものが含まれています.
* FreeRTOSベースのループバックアプリ部分のソースコード(app_src)
* Vitis Classic IDEのエクスポートプロジェクトZIP

### 手順１：Vitisにプロジェクトをインポート
1. このフォルダ(microblaze_firmware.vitis_classic)をワークスペースに設定して起動
1. "File > import"からインポートウィンドウを起動
1. "import type"に"Vitis project exported zip file"を選択
1. "Archive File"に _uart_amp_microblaze.ide.zip_ を指定
1. "System Projects"と"Platform Projects"全てを選択
1. "Finish"

### 手順２：アプリケーションソースコードの取り込み
_app_src_ フォルダにループバックファームウェアのコードが格納されています.
Vitisプロジェクト内にも同じファイル名のソースコードが格納されていますが、app_srcのものが最新のものとなります.
```
app_src/
├── app
│   ├── inc
│   │   ├── hardware_def.h
│   │   ├── led.h
│   │   ├── uart.h
│   │   └── user_def.h
│   ├── led.c
│   ├── uart.c
│   └── uart.c.bak
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
app_echo_uart_mb_0/src/
```
以上で、コードのビルドが出来るようになります.
また、Microblazeの単体ステップ実行でバッグをする際にJtagbootモードへの移行が必要になります.Kria SOM向けにJtag bootモードに移行できるTCLコマンドを記述したShellスクリプトを用意してあります.  

[jtag_tcl/switch_jtagboot.sh]()
<br><br><br>
## 開発者向け情報
Microblazeファームウェアは基本的にはCortex-R5(CR5)向けのものと同じ設計となっています.
FSBL用BootCPUはCA53#0を割当てています.

[ソフトウェアの構造はCR5プロジェクトを参照してください]()
<br>
CR5版との違いは以下となっています.
* ベアメタルデバイスドライバがSDTに非対応の場合の使用方法になる
* リンカ情報(Memory Map)がMicroblazeのLocal-MEM向け
* LEDはSFP+用のLED1を使用(KR260ボード)
* Vitis Unified IDEではなく、Vitis Classicを使用している
<br>
### SDT非対応版ベアメタルデバイスドライバの利用
SDTとはSystem Device Treeの略で、Vitis v2023.2版より採用された、ハードウェア情報管理の仕組みです.
[SDTについて詳しくはこちら](https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/2743468485/Porting+embeddedsw+components+to+system+device+tree+SDT+based+flow)
Vivadoからエクスポートしたハードウェア情報をSDTを使用することにより、よりAPIが簡潔に記述できるようになっています.
<br>
### リンカ情報の違い
Microblazeには128KBのlocal memory(BlockRAM)を使用しています.
ファームウェアはすべてlocal memory上に載るようになっています.
現在110KB以上の使用率のため、空き領域がほぼありません.収まらない場合はDRAMに一部のセクションを載せることも検討する必要があるでしょう.
<br>
### ハートビートLED
LEDはKR260ボードのSFP+用のLED1を割り当てています.このLEDはZynqMPのG8端子(Bank66,LVCMOS18)になります.
<br>
### Vitis Classicを使用している理由
理由は筆者のスキル不足が原因でVitis Unified IDEでMicroblazeの開発が難航したためです.
CR5とMicroblazeで一部互換性のないソースコードになり、理解の妨げになっていることは申し訳なく感じております.
開発が難しい具体的な理由は、MicroblazeでJTAGデバッグを開始した際、ブレークポイントが全く別のソースコードの位置に配置されることです.
原因はELFに含まれるでバッグシンボル情報が不整合な状態になっていると考えられます.筆者はこの原因を突き止めることが出来ませんでした.

