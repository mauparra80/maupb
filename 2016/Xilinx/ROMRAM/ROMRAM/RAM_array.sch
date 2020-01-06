VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ADDR(7:0)
        SIGNAL ADDR(7)
        SIGNAL ADDR(6)
        SIGNAL ADDR(5)
        SIGNAL DATA_IN(7:0)
        SIGNAL DATA_OUT1(0:7)
        SIGNAL XLXN_20(7:0)
        SIGNAL XLXN_19(7:0)
        SIGNAL XLXN_18(7:0)
        SIGNAL XLXN_17(7:0)
        SIGNAL XLXN_16(7:0)
        SIGNAL XLXN_15(7:0)
        SIGNAL XLXN_14(7:0)
        SIGNAL XLXN_13(7:0)
        SIGNAL XLXN_12
        SIGNAL XLXN_11
        SIGNAL XLXN_10
        SIGNAL XLXN_8
        SIGNAL XLXN_4
        SIGNAL XLXN_3
        SIGNAL XLXN_2
        SIGNAL XLXN_1
        SIGNAL ADDR(0)
        SIGNAL ADDR(1)
        SIGNAL ADDR(2)
        SIGNAL ADDR(4)
        SIGNAL ADDR(3)
        SIGNAL WE
        SIGNAL CLK
        SIGNAL XLXN_21
        PORT Input ADDR(7:0)
        PORT Input DATA_IN(7:0)
        PORT Output DATA_OUT1(0:7)
        PORT Input WE
        PORT Input CLK
        BEGIN BLOCKDEF ram32x8s
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -432 80 -448 
            LINE N 80 -448 64 -464 
            RECTANGLE N 320 -524 384 -500 
            LINE N 384 -512 320 -512 
            RECTANGLE N 64 -640 320 -64 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -576 64 -576 
            LINE N 0 -512 64 -512 
            RECTANGLE N 0 -524 64 -500 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 40 -192 
            CIRCLE N 40 -204 64 -180 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -208 144 -208 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
        END BLOCKDEF
        BEGIN BLOCKDEF and4b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 64 -64 64 -256 
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
        END BLOCKDEF
        BEGIN BLOCKDEF bus8_mux
            TIMESTAMP 2006 2 21 5 30 31
            RECTANGLE N 64 -704 320 0 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -672 384 -672 
            RECTANGLE N 320 -684 384 -660 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
        END BLOCKDEF
        BEGIN BLOCKDEF and4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 144 -112 64 -112 
            ARC N 96 -208 192 -112 144 -112 144 -208 
            LINE N 64 -208 144 -208 
            LINE N 64 -64 64 -256 
            LINE N 256 -160 192 -160 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_29 and4b2
            PIN I0 ADDR(6)
            PIN I1 ADDR(5)
            PIN I2 ADDR(7)
            PIN I3 WE
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_30 bus8_mux
            PIN DIN0(7:0) XLXN_13(7:0)
            PIN DIN1(7:0) XLXN_14(7:0)
            PIN DIN2(7:0) XLXN_15(7:0)
            PIN DIN3(7:0) XLXN_16(7:0)
            PIN DIN4(7:0) XLXN_17(7:0)
            PIN DIN5(7:0) XLXN_18(7:0)
            PIN DIN6(7:0) XLXN_19(7:0)
            PIN DIN7(7:0) XLXN_20(7:0)
            PIN DOUT(7:0) DATA_OUT1(0:7)
            PIN S0 ADDR(5)
            PIN S1 ADDR(6)
            PIN S2 ADDR(7)
        END BLOCK
        BEGIN BLOCK XLXI_28 and4b1
            PIN I0 ADDR(6)
            PIN I1 ADDR(7)
            PIN I2 ADDR(5)
            PIN I3 WE
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_27 and4b1
            PIN I0 ADDR(5)
            PIN I1 ADDR(6)
            PIN I2 ADDR(7)
            PIN I3 WE
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_25 and4b1
            PIN I0 ADDR(7)
            PIN I1 ADDR(6)
            PIN I2 ADDR(5)
            PIN I3 WE
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_24 and4b2
            PIN I0 ADDR(7)
            PIN I1 ADDR(5)
            PIN I2 ADDR(6)
            PIN I3 WE
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_23 and4b2
            PIN I0 ADDR(7)
            PIN I1 ADDR(6)
            PIN I2 ADDR(5)
            PIN I3 WE
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_20 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_8
            PIN O(7:0) XLXN_20(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_19 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_12
            PIN O(7:0) XLXN_19(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_11
            PIN O(7:0) XLXN_18(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_10
            PIN O(7:0) XLXN_17(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_4
            PIN O(7:0) XLXN_16(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_3
            PIN O(7:0) XLXN_15(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 and4b3
            PIN I0 ADDR(7)
            PIN I1 ADDR(6)
            PIN I2 ADDR(5)
            PIN I3 WE
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_2
            PIN O(7:0) XLXN_14(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_1 ram32x8s
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN D(7:0) DATA_IN(7:0)
            PIN WCLK CLK
            PIN WE XLXN_1
            PIN O(7:0) XLXN_13(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_48 and4
            PIN I0 ADDR(7)
            PIN I1 ADDR(6)
            PIN I2 ADDR(5)
            PIN I3 WE
            PIN O XLXN_8
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7609 5382
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH DATA_IN(7:0)
            WIRE 448 16 448 272
            WIRE 448 272 1024 272
            WIRE 448 272 448 768
            WIRE 448 768 448 928
            WIRE 448 928 1040 928
            WIRE 448 928 448 1600
            WIRE 448 1600 1040 1600
            WIRE 448 1600 448 2224
            WIRE 448 2224 448 2912
            WIRE 448 2912 448 3536
            WIRE 448 3536 992 3536
            WIRE 448 3536 448 4240
            WIRE 448 4240 1008 4240
            WIRE 448 4240 448 4880
            WIRE 448 4880 1008 4880
            WIRE 448 2912 1024 2912
            WIRE 448 2224 1040 2224
            WIRE 992 3456 992 3536
            WIRE 992 3456 1136 3456
            WIRE 1008 4144 1136 4144
            WIRE 1008 4144 1008 4240
            WIRE 1008 4784 1136 4784
            WIRE 1008 4784 1008 4880
            WIRE 1024 208 1152 208
            WIRE 1024 208 1024 272
            WIRE 1024 2832 1024 2912
            WIRE 1024 2832 1136 2832
            WIRE 1040 832 1040 928
            WIRE 1040 832 1152 832
            WIRE 1040 1520 1040 1600
            WIRE 1040 1520 1152 1520
            WIRE 1040 2144 1040 2224
            WIRE 1040 2144 1152 2144
            BEGIN DISPLAY 448 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_29 704 2928 R0
        IOMARKER 3184 2000 DATA_OUT1(0:7) R0 28
        BEGIN BRANCH DATA_OUT1(0:7)
            WIRE 2832 2000 2960 2000
            WIRE 2960 2000 3184 2000
            BEGIN DISPLAY 2960 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_20(7:0)
            WIRE 1520 4784 2032 4784
            WIRE 2032 2640 2448 2640
            WIRE 2032 2640 2032 4784
        END BRANCH
        BEGIN BRANCH XLXN_19(7:0)
            WIRE 1520 4144 2016 4144
            WIRE 2016 2576 2448 2576
            WIRE 2016 2576 2016 4144
        END BRANCH
        BEGIN BRANCH XLXN_18(7:0)
            WIRE 1520 3456 2000 3456
            WIRE 2000 2512 2448 2512
            WIRE 2000 2512 2000 3456
        END BRANCH
        BEGIN BRANCH XLXN_17(7:0)
            WIRE 1520 2832 1984 2832
            WIRE 1984 2448 2448 2448
            WIRE 1984 2448 1984 2832
        END BRANCH
        BEGIN BRANCH XLXN_16(7:0)
            WIRE 1536 2144 1936 2144
            WIRE 1936 2144 1936 2384
            WIRE 1936 2384 2448 2384
        END BRANCH
        BEGIN BRANCH XLXN_15(7:0)
            WIRE 1536 1520 1952 1520
            WIRE 1952 1520 1952 2320
            WIRE 1952 2320 2448 2320
        END BRANCH
        BEGIN BRANCH XLXN_14(7:0)
            WIRE 1536 832 1968 832
            WIRE 1968 832 1968 2256
            WIRE 1968 2256 2448 2256
        END BRANCH
        BEGIN BRANCH XLXN_13(7:0)
            WIRE 1536 208 1984 208
            WIRE 1984 208 1984 2192
            WIRE 1984 2192 2448 2192
        END BRANCH
        BEGIN INSTANCE XLXI_30 2448 2672 R0
        END INSTANCE
        BEGIN BRANCH XLXN_12
            WIRE 976 4080 1136 4080
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 928 3392 1136 3392
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 960 2768 1136 2768
        END BRANCH
        INSTANCE XLXI_28 672 3552 R0
        INSTANCE XLXI_25 720 2240 R0
        INSTANCE XLXI_24 720 1616 R0
        BEGIN BRANCH XLXN_8
            WIRE 992 4720 1136 4720
        END BRANCH
        INSTANCE XLXI_20 1136 5296 R0
        INSTANCE XLXI_19 1136 4656 R0
        INSTANCE XLXI_16 1136 3968 R0
        INSTANCE XLXI_15 1136 3344 R0
        INSTANCE XLXI_12 1152 2656 R0
        INSTANCE XLXI_11 1152 2032 R0
        BEGIN BRANCH XLXN_4
            WIRE 960 2080 976 2080
            WIRE 976 2080 1152 2080
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 960 1456 976 1456
            WIRE 976 1456 1152 1456
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 960 768 1152 768
        END BRANCH
        INSTANCE XLXI_9 704 304 R0
        BEGIN BRANCH XLXN_1
            WIRE 960 144 1152 144
        END BRANCH
        INSTANCE XLXI_2 1152 1344 R0
        INSTANCE XLXI_1 1152 720 R0
        BEGIN BRANCH ADDR(0)
            WIRE 240 960 624 960
            WIRE 624 960 624 1648
            WIRE 624 1648 1152 1648
            WIRE 624 1648 624 2272
            WIRE 624 2272 1152 2272
            WIRE 624 2272 624 2960
            WIRE 624 2960 1136 2960
            WIRE 624 2960 624 3584
            WIRE 624 3584 1136 3584
            WIRE 624 3584 624 4272
            WIRE 624 4272 1136 4272
            WIRE 624 4272 624 4912
            WIRE 624 4912 1136 4912
            WIRE 624 960 1120 960
            WIRE 1120 960 1152 960
            WIRE 624 336 1152 336
            WIRE 624 336 624 960
            BEGIN DISPLAY 1120 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_27 720 4240 R0
        BEGIN BRANCH ADDR(1)
            WIRE 240 1024 576 1024
            WIRE 576 1024 576 1712
            WIRE 576 1712 1152 1712
            WIRE 576 1712 576 2336
            WIRE 576 2336 1152 2336
            WIRE 576 2336 576 3024
            WIRE 576 3024 1136 3024
            WIRE 576 3024 576 3648
            WIRE 576 3648 1136 3648
            WIRE 576 3648 576 4336
            WIRE 576 4336 1136 4336
            WIRE 576 4336 576 4976
            WIRE 576 4976 1136 4976
            WIRE 576 1024 1024 1024
            WIRE 1024 1024 1152 1024
            WIRE 576 400 1152 400
            WIRE 576 400 576 1024
            BEGIN DISPLAY 1024 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(2)
            WIRE 240 1088 544 1088
            WIRE 544 1088 544 1776
            WIRE 544 1776 1152 1776
            WIRE 544 1776 544 2400
            WIRE 544 2400 1152 2400
            WIRE 544 2400 544 3088
            WIRE 544 3088 1136 3088
            WIRE 544 3088 544 3712
            WIRE 544 3712 1136 3712
            WIRE 544 3712 544 4400
            WIRE 544 4400 1136 4400
            WIRE 544 4400 544 5040
            WIRE 544 5040 1136 5040
            WIRE 544 1088 976 1088
            WIRE 976 1088 1152 1088
            WIRE 544 464 1152 464
            WIRE 544 464 544 1088
            BEGIN DISPLAY 976 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(4)
            WIRE 240 1216 400 1216
            WIRE 400 1216 400 1904
            WIRE 400 1904 1152 1904
            WIRE 400 1904 400 2528
            WIRE 400 2528 1152 2528
            WIRE 400 2528 400 3216
            WIRE 400 3216 1136 3216
            WIRE 400 3216 400 3840
            WIRE 400 3840 1136 3840
            WIRE 400 3840 400 4528
            WIRE 400 4528 1136 4528
            WIRE 400 4528 400 5168
            WIRE 400 5168 1136 5168
            WIRE 400 1216 944 1216
            WIRE 944 1216 1152 1216
            WIRE 400 592 1152 592
            WIRE 400 592 400 1216
            BEGIN DISPLAY 944 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 144 960 240 960
        BUSTAP 144 1024 240 1024
        BUSTAP 144 1088 240 1088
        BUSTAP 144 1136 240 1136
        BUSTAP 144 1216 240 1216
        BEGIN BRANCH ADDR(3)
            WIRE 240 1136 480 1136
            WIRE 480 1136 480 1152
            WIRE 480 1152 496 1152
            WIRE 496 1152 496 1840
            WIRE 496 1840 1152 1840
            WIRE 496 1840 496 2464
            WIRE 496 2464 1152 2464
            WIRE 496 2464 496 3152
            WIRE 496 3152 1136 3152
            WIRE 496 3152 496 3776
            WIRE 496 3776 1136 3776
            WIRE 496 3776 496 4464
            WIRE 496 4464 1136 4464
            WIRE 496 4464 496 5104
            WIRE 496 5104 1136 5104
            WIRE 496 1152 912 1152
            WIRE 912 1152 1152 1152
            WIRE 496 528 1152 528
            WIRE 496 528 496 1152
            BEGIN DISPLAY 912 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 144 32 ADDR(7:0) R270 28
        BEGIN BRANCH WE
            WIRE 240 32 240 48
            WIRE 240 48 240 672
            WIRE 240 672 240 1360
            WIRE 240 1360 720 1360
            WIRE 240 1360 240 1984
            WIRE 240 1984 720 1984
            WIRE 240 1984 240 2672
            WIRE 240 2672 704 2672
            WIRE 240 2672 240 3296
            WIRE 240 3296 672 3296
            WIRE 240 3296 240 3984
            WIRE 240 3984 720 3984
            WIRE 240 3984 240 4624
            WIRE 240 4624 736 4624
            WIRE 240 672 704 672
            WIRE 240 48 704 48
        END BRANCH
        IOMARKER 448 16 DATA_IN(7:0) R270 28
        BEGIN BRANCH CLK
            WIRE 336 16 336 304
            WIRE 336 304 336 896
            WIRE 336 896 1152 896
            WIRE 336 896 336 1584
            WIRE 336 1584 1152 1584
            WIRE 336 1584 336 2208
            WIRE 336 2208 1152 2208
            WIRE 336 2208 336 2944
            WIRE 336 2944 336 3520
            WIRE 336 3520 1136 3520
            WIRE 336 3520 336 4208
            WIRE 336 4208 336 4848
            WIRE 336 4848 1136 4848
            WIRE 336 4208 1136 4208
            WIRE 336 2944 736 2944
            WIRE 336 304 368 304
            WIRE 368 304 1104 304
            WIRE 736 2896 736 2944
            WIRE 736 2896 1136 2896
            WIRE 1104 272 1152 272
            WIRE 1104 272 1104 304
            BEGIN DISPLAY 368 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 336 16 CLK R270 28
        BEGIN BRANCH ADDR(7:0)
            WIRE 144 32 144 960
            WIRE 144 960 144 1024
            WIRE 144 1024 144 1088
            WIRE 144 1088 144 1136
            WIRE 144 1136 144 1216
            WIRE 144 1216 144 1488
            WIRE 144 1488 144 5248
            WIRE 144 5248 144 5312
            WIRE 144 5312 144 5360
            WIRE 144 5360 144 5376
            BEGIN DISPLAY 144 1488 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 144 5360 240 5360
        BUSTAP 144 5312 240 5312
        BUSTAP 144 5248 240 5248
        IOMARKER 240 32 WE R270 28
        INSTANCE XLXI_48 736 4880 R0
        BEGIN BRANCH ADDR(7)
            WIRE 240 5360 288 5360
            WIRE 288 5360 2288 5360
            WIRE 288 240 704 240
            WIRE 288 240 288 864
            WIRE 288 864 288 1552
            WIRE 288 1552 720 1552
            WIRE 288 1552 288 2176
            WIRE 288 2176 720 2176
            WIRE 288 2176 288 2736
            WIRE 288 2736 704 2736
            WIRE 288 2736 288 3424
            WIRE 288 3424 672 3424
            WIRE 288 3424 288 4080
            WIRE 288 4080 480 4080
            WIRE 288 4080 288 4816
            WIRE 288 4816 736 4816
            WIRE 288 4816 288 5360
            WIRE 288 864 704 864
            WIRE 480 4048 720 4048
            WIRE 480 4048 480 4080
            WIRE 2288 2128 2352 2128
            WIRE 2352 2128 2448 2128
            WIRE 2288 2128 2288 5360
            BEGIN DISPLAY 2352 2128 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_23 704 928 R0
        BEGIN BRANCH ADDR(5)
            WIRE 80 112 80 736
            WIRE 80 736 704 736
            WIRE 80 736 80 1456
            WIRE 80 1456 384 1456
            WIRE 384 1456 384 1488
            WIRE 384 1488 720 1488
            WIRE 80 1456 80 2048
            WIRE 80 2048 720 2048
            WIRE 80 2048 80 2800
            WIRE 80 2800 704 2800
            WIRE 80 2800 80 3360
            WIRE 80 3360 672 3360
            WIRE 80 3360 80 4048
            WIRE 80 4048 384 4048
            WIRE 384 4048 384 4176
            WIRE 384 4176 720 4176
            WIRE 80 4048 80 4688
            WIRE 80 4688 368 4688
            WIRE 368 4688 368 5248
            WIRE 368 5248 2192 5248
            WIRE 368 4688 736 4688
            WIRE 80 112 384 112
            WIRE 384 112 704 112
            WIRE 240 5248 368 5248
            WIRE 2192 2000 2352 2000
            WIRE 2352 2000 2448 2000
            WIRE 2192 2000 2192 5248
            BEGIN DISPLAY 384 112 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2352 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(6)
            WIRE 32 176 32 800
            WIRE 32 800 704 800
            WIRE 32 800 32 1552
            WIRE 32 1552 208 1552
            WIRE 32 1552 32 2176
            WIRE 32 2176 272 2176
            WIRE 32 2176 32 2880
            WIRE 32 2880 352 2880
            WIRE 32 2880 32 3472
            WIRE 32 3472 352 3472
            WIRE 352 3472 352 3488
            WIRE 352 3488 672 3488
            WIRE 32 3472 32 4112
            WIRE 32 4112 720 4112
            WIRE 32 4112 32 4752
            WIRE 32 4752 224 4752
            WIRE 224 4752 224 5024
            WIRE 224 5024 336 5024
            WIRE 336 5024 336 5312
            WIRE 336 5312 2240 5312
            WIRE 224 4752 736 4752
            WIRE 32 176 368 176
            WIRE 368 176 704 176
            WIRE 208 1424 720 1424
            WIRE 208 1424 208 1552
            WIRE 240 5312 336 5312
            WIRE 272 2112 720 2112
            WIRE 272 2112 272 2176
            WIRE 352 2864 704 2864
            WIRE 352 2864 352 2880
            WIRE 2240 2064 2336 2064
            WIRE 2336 2064 2448 2064
            WIRE 2240 2064 2240 5312
            BEGIN DISPLAY 368 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2336 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
