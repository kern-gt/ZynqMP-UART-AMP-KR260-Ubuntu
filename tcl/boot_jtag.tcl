proc boot_jtag { } {
############################
# Switch to JTAG boot mode #
############################
targets -set -filter {name =~ "PSU"}
# update multiboot to ZERO
mwr 0xffca0010 0x0
# change boot mode to JTAG
mwr 0xff5e0200 0x0100
# reset
rst -system
}


# Jtag接続
connect
puts stdout "Connect Jtag"

# JtagBoot切り替え
puts -nonewline stdout "Start transition to jtag boot mode..."
boot_jtag
puts stdout "done."

# Jtag切断
puts -nonewline stdout "Disconnect Jtag..."
disconnect
puts stdout "done."