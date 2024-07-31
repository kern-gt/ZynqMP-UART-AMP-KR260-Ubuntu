# UART-AMP エコーバックテスト

[Click here for the English version](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/linux_uart_amp_echo_test/README.md)

## 概要
このテストコードはZynqMPのCA53(Linux)からテストデータ(test_data.txt)の内容をUARTに送信し、サブコアからループバックしてきたデータが正しいかどうかを検証します.  
**環境**
* KR260ボード
* Xilinx認定Ubuntu22.04


**linux_uart_amp_echo_testフォルダの内容**
本フォルダには以下のものが含まれています.
* uart_amp_echo_test.py : CA53(linux)で動作させるPython実装のエコーバックテストコード
* test_data.txt : エコーテストで使用するテストデータを定義
* requirements.txt エコーテストに使用するPython環境設定
* bitstream : MicroblazeのファームウェアELFを結合したPL(FPGA)のbitstream
* dtbo : PL(FPGA)コンフィグレーションに使用するDevicetree Overlay
* r5_fw : サブコアCortex-R5(CR5)のCore0とCore1のファームウェアELF
* setup_fpga_remoteproc_ubuntu.sh : CA53(linux)上でPL(FPGA)のコンフィグレーションとCR5の2コア用のELFのロードと起動をするセットアップスクリプト
* openamp_dtb : OpenAMP用の

## Getting Started
エコーバックテストの動かし方を紹介します.  
**手順**
1. ZynqMPにプログラムをコピー
1. OpenAMP用のDevicetreeのインストール
1. UART-AMPのセットアップ
1. Python環境のセットアップ
1. エコーバックテストの実行
  
### 1. ZynqMPにプログラムをコピー
_linux_uart_amp_echo_test_ フォルダをまるごとZynqMP側にコピーします.
方法はいくつかあります.
* VSCodeのRemoteSSHでフォルダごとドラッグ＆ドロップする
* SCPコマンドで送信
* ZynqMPのSDカードをホストPCに挿してコピーする

VSCodeのRemoteSSHが楽でおすすめです.
  
### 2. OpenAMP用のDevicetreeのインストール
Devicetree本体は以下のフォルダにあります.
```
linux_uart_amp_echo_test/setup_fpga_remoteproc/openamp_dtb/user-override.dtb
```
これを、ZynqMPのSDカードの以下にコピーします.
```
/boot/firmware/user-override.dtb
```
ZynqMPを再起動します.
```
$ sudo reboot
```
Remoteprocのフォルダが出現したら成功です.
```
$ ls -1 /sys/class/remoteproc/
remoteproc0
remoteproc1
```
  
### 3. Setup UART-AMP
PL(FPGA)とサブコア(CR5-0、CR5-1、Microblaze)の3コアのループバックファームウェアをセットアップします.

ZynqMP上で以下のスクリプトを実行します.
```
$ pwd
/home/ubuntu/linux_echo_test_app
$ sudo bash ./setup_fpga_remoteproc/setup_fpga_remoteproc_ubuntu.sh
```

PL(FPGA)がコンフィグレーションされ、SFP_LED1が不規則点滅を始めます.また、CR5の2コアが起動するため、UF1_LEDとUF2_LEDが不規則点滅を初めます.
  
### 4. Python環境のセットアップ
サブコアが起動できたら、Linux側のテストアプリを動かすための準備を行います.
pyserialパッケージが必要です.また、venvで仮想環境を作成するため、あらかじめ、Python Versionに合ったvenvを使えるようにする必要があります.
```
$ python -V
Python 3.10.12

$ python3 -m venv uart-amp
$ source ./uart-amp/bin/activate
(uart-amp)$ python -m pip install -r requirements.txt
(uart-amp)$ python -m pip list
Package    Version
---------- -------
pip        22.0.2
pyserial   3.5
setuptools 59.6.0
```
  
### 5. エコーバックテストの実行
３つのサブコアのうち、使用する1つを選択します.
UARTのデバイスファイル名は下記コマンドで確認できます.
```
$ ls /dev/ttyUL*
```
AXI-UARTLite IPを使用する場合はLinux側は"ttyULx"として認識するようです.筆者の環境では以下の割当がされていました.
* /dev/ttyUL0 : CR5-0
* /dev/ttyUL1 : CR5-1
* /dev/ttyUL2 : Microblaze

ZynqMP上で以下のコマンドを実行します.
```
# CR5-0
(uart-amp)$ python uart_amp_echo_test.py test_data.txt -p /dev/ttyUL0
# CR5-1
(uart-amp)$ python uart_amp_echo_test.py test_data.txt -p /dev/ttyUL1
# Microblaze
(uart-amp)$ python uart_amp_echo_test.py test_data.txt -p /dev/ttyUL2
```
以下のようなログが表示されたら成功です.
```
Verify Pass. count_bytes= 1  recv=b'1'
Verify Pass. count_bytes= 2  recv=b'2'
Verify Pass. count_bytes= 3  recv=b'3'
(...)
Verify Pass. count_bytes= 32997  recv=b'7'
Verify Pass. count_bytes= 32998  recv=b'8'
Verify Pass. count_bytes= 32999  recv=b'\n'
Success echo test.
```
<br><br><br>
## 開発者向け情報
### フォルダ構成
linux_echo_testフォルダに以下のファイルを配置してあります.
1. linux_echo_test/
    - setup_fpga_remoteproc/
        - bitstream/
            - Microblaze用ELFを結合済みのbitstream.binファイル(design_1_wrapper.bit.bin)
        - dtbo/
            - Devicetree Overlayファイル(uart_amp.dtbo)
        - r5_fw/
            - CR5-0コア用ELF(app_echo_uart_r5_0.elf)
            - CR5-1コア用ELF(app_echo_uart_r5_1.elf)
        - setup_fpga_remoteproc_ubuntu.sh
    - uart_amp_echo_test.py : Python実装のLinux UARTエコーバックテスト
    - test_data.txt : エコーバックテストで使用する通信データ定義
    - requirements.txt
  
**linux_echo_test/**  
CA53(Linux)側で実行するPython実装のエコーバックテストのコードを置いてあります(uart_amp_echo_test.py).
送信と受信を別スレッドに分け、できるだけサブコアに負荷を掛けられるようにしてあります.
test_data.txtはエコーバックテストの転送データを定義してあります.デフォルトは33000byteのデータサイズになります.
requirements.txtはvenvでPython仮想環境を作成した際に必要となるパッケージを定義してあります.
  
**bitstream/**  
bitstreamファイルは".bit"ではなく、".bin"ファイルを用意します.Vivadoで"Setting>bitstream"から設定できます.また、bitstreamファイルにMicroblaze用のELFを結合しておきます.これはVivadoの"Tools>Associate ELF Files..."で結合ツールを立ち上げることが出来ます.
Microblaze用のELFはVitis Classic IDEのプロジェクトフォルダにあります.
```
microblaze_firmware.vitis_classic/app_echo_uart_mb_0/Release/app_echo_uart_mb_0.elf
```
  
**dtbo/**  
Devicetree Overlayファイルはhw_exportフォルダ内のXSAファイルからPL用デバイスツリーソースコードを生成し、DTBにコンパイルすると得られます.詳しくはhw_exportフォルダのREADME.mdを参照してください.
  
**r5_fw/**  
CR5コア用ELFはVitis Unified IDEのプロジェクトフォルダにあります.
```
r5_firmware.vitis_unified_ide/app_echo_uart_r5_0/build/app_echo_uart_r5_0.elf
r5_firmware.vitis_unified_ide/app_echo_uart_r5_1/build/app_echo_uart_r5_1.elf
```
  
**setup_fpga_remoteproc_ubuntu.sh**  
このスクリプトでは以下のことやっています.
1. xmutil機能向けのアプリケーションフォルダの作成
1. xmutilコマンドを使用した、FPGA Configuration
1. Remoteprocを使用した、CR5コア用ELFのロード
1. Remoteprocを使用した、CR5コアの起動


Devicetree Overlayにより、以下のフォルダにUARTデバイスファイルが出現します.
* /dev/ttyULx

### テストデータ
test_data.txtに転送データを定義してあります.
デフォルトは33000Byteのデータになります.



### 通信ボーレートについて
CR5用とMicroblaze用でAXI-UARTLiteのボーレートを変えてあります.
* CR5 : 115200bps
* Microbaze : 9600bps

AXI-UARTLiteは論理合成・インプリの段階でボーレートが決定し、可変できません.そのため、Linux側のアプリではボーレートを設定する必要がなく、また、設定できません.
サブコアの種類によって速度を変更したのはMicroblazeが115200bpsだと、パケロスが発生したためです.AXI-UARTLiteの受信ハードウェアFIFOは16byte分ありますが、これを割込みで取得しても、バッファオーバーフローが起こることが判明したため、速度を落とすことにしました.
