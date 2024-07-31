#!/bin/python3
"""
    Example: $ python test_data.txt -p /dev/ttyUSB0
    Example: $ python test_data.txt -p /dev/ttyUSB0 -b 9600
"""

import argparse
import serial
import threading

def Sender():
    global test_data
    global Uart

    send_data = test_data
    Uart.write(send_data)
    

def main():
    global test_data
    global Uart

    parser = argparse.ArgumentParser()
    parser.add_argument('arg1', help='test text data')
    parser.add_argument('-p','--port', help='serial port : example,"--port "/dev/ttyUSB1"')
    parser.add_argument('-b','--baud', help='baudrate')

    args = parser.parse_args()

    if args.arg1 == None :
        print("set test data file. eg= '$python uart_amp_echo_test.py ./test_data.txt'")
        exit()
    else:
        with open(args.arg1, 'br') as f:
            test_data = f.read()
    
    if args.port == None :
        port = "/dev/ttyUSB0"
    else:
        port = args.port
    
    if args.baud == None :
        baudrate = 115200
    else:
        baudrate = args.baud
    
    with serial.Serial(port, baudrate, timeout=3) as Uart:

        threading_send = threading.Thread(target=Sender)
        threading_send.start()

        err = False
        for i, ori_char in enumerate(test_data):
            ori_char = ori_char.to_bytes(1,'little')
            recv_char = Uart.read(1)
            if ori_char != recv_char :
                err = True
                if recv_char == b'' :
                    print("Receive Timeout.")
                else:
                    print("Verify Faild! recv={0}".format(recv_char))
            else:
                print("Verify Pass. count_bytes= {0}  recv={1}".format(i,recv_char))

        threading_send.join()
    
    if err == True:
        print("Failed echo test.")
    else:
        print("Success echo test.")

if __name__ == "__main__":
    test_data=''
    Uart=''
    main()