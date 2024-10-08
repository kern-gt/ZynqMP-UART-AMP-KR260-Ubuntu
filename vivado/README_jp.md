# Vivado

[Click here for the English version](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/vivado/README.md)

## 概要
IPインテグレータのTCLとKR260ボード用の制約条件ファイル(.xdc)を格納してあります。Vivadoでプロジェクト新規作成した後、TCLを実行すると、IPブロックを展開できます。
```
Tools > Run Tck Script...
```

## 環境
Vivado ML v2024.1を使用しています。

## その他注意点
### AXI UARTLiteのボーレート
CR5側とMicroblaze側でボーレートを変えてあります。
* CR5 : 115200bps
* Microblaze : 9600bps

理由は115200bpsではMicroblazeの処理が間に合わず、パケロスが発生するためです。
AXI UARTLiteのハードウェア受信FIFOは16byteありますが、割込みで読み出してもバッファオーバーフローすることを確認しています。

### MicroblazeのELFの結合  
PL(FPGA)コンフィグレーション実行時にBlockRAMにELFを展開してMicroblazeを起動させるようにします。そのために、VivadoでELFをビットストリームに結合します。ELFを設定した後はbitstreamを再生成するようにします。
```
Tools > Associate ELF Files...
```

### Bitstream.binの生成  
Bitstreamは基本は(.bit)ファイルですが、BINに変換したファイルがDevicetree Overlayに必要です。Vivadoの設定でBINを出力する設定が出来ます。
```
PROGECT MANAGER > Settings > Progect Settings > Bitstream
-bin_fileを有効にする
```

