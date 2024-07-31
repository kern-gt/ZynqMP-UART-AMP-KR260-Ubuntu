# OpenAMP Devicetree

[Click here for the English version](https://github.com/kern-gt/ZynqMP-UART-AMP-KR260-Ubuntu/blob/main/openamp_dts/README.md)

## 概要
UART-AMPではサブコアのCortex-R5(CR5)のELFのロードおよび、起動・停止管理にOpenAMPのRemoteproc機能を利用します。そのために、KriaSOM(ZynqMP)のデフォルトのDevicetreeを書き換える必要があります。
OpenAMPはDRAM上に予約領域を設定しLinuxの管理外に設定する必要があるため、Devicetree Overlayで対応できません。

**環境**
Kria k26 SOMとXilinx認定Ubuntu22.04を前提とします。

## Devicetreeのコンパイル
以下を実行すると、user-override.dtbが生成されます。
```
$ bash ./dtc_example.sh
```

## OpenAMPのインストール
Xilinx認定Ubuntu22.04では、/boot/fimrware以下にカスタムDevicetree(user-override.dtb)を配置すると、次回起動時からそちらを読み込んでくれます。