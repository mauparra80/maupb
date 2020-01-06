VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL in1(0)
        SIGNAL in0(0)
        SIGNAL in1(1)
        SIGNAL in0(1)
        SIGNAL in1(2)
        SIGNAL in0(2)
        SIGNAL in1(3)
        SIGNAL in0(3)
        SIGNAL in1(4)
        SIGNAL in0(4)
        SIGNAL in2(5)
        SIGNAL in1(5)
        SIGNAL in0(5)
        SIGNAL in0(6)
        SIGNAL in3(0)
        SIGNAL in2(0)
        SIGNAL in3(1)
        SIGNAL in2(1)
        SIGNAL in3(2)
        SIGNAL in2(2)
        SIGNAL in3(3)
        SIGNAL in2(3)
        SIGNAL in3(4)
        SIGNAL in2(4)
        SIGNAL in3(5)
        SIGNAL in3(6)
        SIGNAL in2(6)
        SIGNAL in1(6)
        SIGNAL in1(6:0)
        SIGNAL in2(6:0)
        SIGNAL in3(6:0)
        SIGNAL in0(6:0)
        SIGNAL mux_out(6)
        SIGNAL mux_out(5)
        SIGNAL mux_out(4)
        SIGNAL mux_out(3)
        SIGNAL mux_out(2)
        SIGNAL mux_out(1)
        SIGNAL mux_out(0)
        SIGNAL mux_out(6:0)
        SIGNAL c0
        SIGNAL c1
        PORT Input in1(6:0)
        PORT Input in2(6:0)
        PORT Input in3(6:0)
        PORT Input in0(6:0)
        PORT Output mux_out(6:0)
        PORT Input c0
        PORT Input c1
        BEGIN BLOCKDEF mux4_sch
            TIMESTAMP 2007 2 10 7 15 24
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            RECTANGLE N 64 -256 320 128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_7 mux4_sch
            PIN c1 c1
            PIN in3 in3(0)
            PIN in2 in2(0)
            PIN in1 in1(0)
            PIN in0 in0(0)
            PIN c0 c0
            PIN mux_out mux_out(0)
        END BLOCK
        BEGIN BLOCK XLXI_6 mux4_sch
            PIN c1 c1
            PIN in3 in3(2)
            PIN in2 in2(2)
            PIN in1 in1(2)
            PIN in0 in0(2)
            PIN c0 c0
            PIN mux_out mux_out(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 mux4_sch
            PIN c1 c1
            PIN in3 in3(1)
            PIN in2 in2(1)
            PIN in1 in1(1)
            PIN in0 in0(1)
            PIN c0 c0
            PIN mux_out mux_out(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 mux4_sch
            PIN c1 c1
            PIN in3 in3(4)
            PIN in2 in2(4)
            PIN in1 in1(4)
            PIN in0 in0(4)
            PIN c0 c0
            PIN mux_out mux_out(4)
        END BLOCK
        BEGIN BLOCK XLXI_3 mux4_sch
            PIN c1 c1
            PIN in3 in3(3)
            PIN in2 in2(3)
            PIN in1 in1(3)
            PIN in0 in0(3)
            PIN c0 c0
            PIN mux_out mux_out(3)
        END BLOCK
        BEGIN BLOCK XLXI_2 mux4_sch
            PIN c1 c1
            PIN in3 in3(6)
            PIN in2 in2(6)
            PIN in1 in1(6)
            PIN in0 in0(6)
            PIN c0 c0
            PIN mux_out mux_out(6)
        END BLOCK
        BEGIN BLOCK XLXI_1 mux4_sch
            PIN c1 c1
            PIN in3 in3(5)
            PIN in2 in2(5)
            PIN in1 in1(5)
            PIN in0 in0(5)
            PIN c0 c0
            PIN mux_out mux_out(5)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH in1(0)
            WIRE 3200 448 3200 608
            WIRE 3200 608 3200 1120
            BEGIN DISPLAY 3200 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(0)
            WIRE 3136 576 3136 608
            WIRE 3136 608 3136 1120
            BEGIN DISPLAY 3136 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(1)
            WIRE 2784 448 2784 608
            WIRE 2784 608 2784 1120
            BEGIN DISPLAY 2784 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(1)
            WIRE 2720 576 2720 608
            WIRE 2720 608 2720 1120
            BEGIN DISPLAY 2720 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(2)
            WIRE 2368 448 2368 608
            WIRE 2368 608 2368 1120
            BEGIN DISPLAY 2368 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(2)
            WIRE 2304 576 2304 608
            WIRE 2304 608 2304 1120
            BEGIN DISPLAY 2304 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(3)
            WIRE 1936 448 1936 608
            WIRE 1936 608 1936 1120
            BEGIN DISPLAY 1936 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(3)
            WIRE 1872 576 1872 608
            WIRE 1872 608 1872 1120
            BEGIN DISPLAY 1872 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(4)
            WIRE 1520 448 1520 608
            WIRE 1520 608 1520 1120
            BEGIN DISPLAY 1520 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(4)
            WIRE 1456 576 1456 608
            WIRE 1456 608 1456 1120
            BEGIN DISPLAY 1456 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(5)
            WIRE 1152 320 1152 608
            WIRE 1152 608 1152 1120
            BEGIN DISPLAY 1152 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(5)
            WIRE 1088 448 1088 608
            WIRE 1088 608 1088 1120
            BEGIN DISPLAY 1088 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(5)
            WIRE 1024 576 1024 608
            WIRE 1024 608 1024 1120
            BEGIN DISPLAY 1024 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(6)
            WIRE 608 576 608 608
            WIRE 608 608 608 1120
            BEGIN DISPLAY 608 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(0)
            WIRE 3328 192 3328 592
            WIRE 3328 592 3328 1120
            BEGIN DISPLAY 3328 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(0)
            WIRE 3264 320 3264 592
            WIRE 3264 592 3264 1120
            BEGIN DISPLAY 3264 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(1)
            WIRE 2912 192 2912 592
            WIRE 2912 592 2912 1120
            BEGIN DISPLAY 2912 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(1)
            WIRE 2848 320 2848 592
            WIRE 2848 592 2848 1120
            BEGIN DISPLAY 2848 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(2)
            WIRE 2496 192 2496 592
            WIRE 2496 592 2496 1120
            BEGIN DISPLAY 2496 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(2)
            WIRE 2432 320 2432 592
            WIRE 2432 592 2432 1120
            BEGIN DISPLAY 2432 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(3)
            WIRE 2064 192 2064 592
            WIRE 2064 592 2064 1120
            BEGIN DISPLAY 2064 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(3)
            WIRE 2000 320 2000 592
            WIRE 2000 592 2000 1120
            BEGIN DISPLAY 2000 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(4)
            WIRE 1648 192 1648 592
            WIRE 1648 592 1648 1120
            BEGIN DISPLAY 1648 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(4)
            WIRE 1584 320 1584 592
            WIRE 1584 592 1584 1120
            BEGIN DISPLAY 1584 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(5)
            WIRE 1216 192 1216 592
            WIRE 1216 592 1216 1120
            BEGIN DISPLAY 1216 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(6)
            WIRE 800 192 800 592
            WIRE 800 592 800 1120
            BEGIN DISPLAY 800 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(6)
            WIRE 736 320 736 592
            WIRE 736 592 736 1120
            BEGIN DISPLAY 736 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(6)
            WIRE 672 448 672 592
            WIRE 672 592 672 1120
            BEGIN DISPLAY 672 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in1(6:0)
            WIRE 256 352 496 352
            WIRE 496 352 672 352
            WIRE 672 352 1088 352
            WIRE 1088 352 1520 352
            WIRE 1520 352 1936 352
            WIRE 1936 352 2368 352
            WIRE 2368 352 2784 352
            WIRE 2784 352 3200 352
            WIRE 3200 352 3376 352
            BEGIN DISPLAY 496 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in2(6:0)
            WIRE 240 224 480 224
            WIRE 480 224 736 224
            WIRE 736 224 1152 224
            WIRE 1152 224 1584 224
            WIRE 1584 224 2000 224
            WIRE 2000 224 2432 224
            WIRE 2432 224 2848 224
            WIRE 2848 224 3264 224
            WIRE 3264 224 3360 224
            BEGIN DISPLAY 480 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in3(6:0)
            WIRE 240 96 480 96
            WIRE 480 96 800 96
            WIRE 800 96 1216 96
            WIRE 1216 96 1648 96
            WIRE 1648 96 2064 96
            WIRE 2064 96 2496 96
            WIRE 2496 96 2912 96
            WIRE 2912 96 3328 96
            WIRE 3328 96 3360 96
            BEGIN DISPLAY 480 96 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH in0(6:0)
            WIRE 256 480 528 480
            WIRE 528 480 608 480
            WIRE 608 480 1024 480
            WIRE 1024 480 1456 480
            WIRE 1456 480 1872 480
            WIRE 1872 480 2304 480
            WIRE 2304 480 2720 480
            WIRE 2720 480 3136 480
            WIRE 3136 480 3376 480
            BEGIN DISPLAY 528 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 608 480 608 576
        BUSTAP 672 352 672 448
        BUSTAP 736 224 736 320
        BUSTAP 800 96 800 192
        BUSTAP 1024 480 1024 576
        BUSTAP 1088 352 1088 448
        BUSTAP 1152 224 1152 320
        BUSTAP 1216 96 1216 192
        BUSTAP 1456 480 1456 576
        BUSTAP 1520 352 1520 448
        BUSTAP 1584 224 1584 320
        BUSTAP 1648 96 1648 192
        BUSTAP 1872 480 1872 576
        BUSTAP 1936 352 1936 448
        BUSTAP 2000 224 2000 320
        BUSTAP 2064 96 2064 192
        BUSTAP 2304 480 2304 576
        BUSTAP 2368 352 2368 448
        BUSTAP 2432 224 2432 320
        BUSTAP 2496 96 2496 192
        BUSTAP 2720 480 2720 576
        BUSTAP 2784 352 2784 448
        BUSTAP 2848 224 2848 320
        BUSTAP 2912 96 2912 192
        BUSTAP 3136 480 3136 576
        BUSTAP 3200 352 3200 448
        BUSTAP 3264 224 3264 320
        BUSTAP 3328 96 3328 192
        IOMARKER 256 480 in0(6:0) R180 28
        BUSTAP 3328 1664 3328 1568
        BUSTAP 2912 1664 2912 1568
        BUSTAP 2496 1664 2496 1568
        BUSTAP 2064 1664 2064 1568
        BUSTAP 1648 1664 1648 1568
        BUSTAP 1216 1664 1216 1568
        BUSTAP 800 1664 800 1568
        BEGIN BRANCH mux_out(6)
            WIRE 800 1504 800 1520
            WIRE 800 1520 800 1568
            BEGIN DISPLAY 800 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mux_out(5)
            WIRE 1216 1504 1216 1520
            WIRE 1216 1520 1216 1568
            BEGIN DISPLAY 1216 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mux_out(4)
            WIRE 1648 1504 1648 1520
            WIRE 1648 1520 1648 1568
            BEGIN DISPLAY 1648 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mux_out(3)
            WIRE 2064 1504 2064 1520
            WIRE 2064 1520 2064 1568
            BEGIN DISPLAY 2064 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mux_out(2)
            WIRE 2496 1504 2496 1520
            WIRE 2496 1520 2496 1568
            BEGIN DISPLAY 2496 1520 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mux_out(1)
            WIRE 2912 1504 2912 1536
            WIRE 2912 1536 2912 1568
            BEGIN DISPLAY 2912 1536 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH mux_out(0)
            WIRE 3328 1504 3328 1536
            WIRE 3328 1536 3328 1568
            BEGIN DISPLAY 3328 1536 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_7 3104 1120 R90
        END INSTANCE
        BEGIN BRANCH mux_out(6:0)
            WIRE 464 1664 800 1664
            WIRE 800 1664 1216 1664
            WIRE 1216 1664 1472 1664
            WIRE 1472 1664 1648 1664
            WIRE 1648 1664 2064 1664
            WIRE 2064 1664 2496 1664
            WIRE 2496 1664 2912 1664
            WIRE 2912 1664 3328 1664
            WIRE 3328 1664 3360 1664
            BEGIN DISPLAY 1472 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 2272 1120 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_5 2688 1120 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1424 1120 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1840 1120 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_2 576 1120 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_1 992 1120 R90
        END INSTANCE
        IOMARKER 464 1664 mux_out(6:0) R180 28
        BEGIN BRANCH c0
            WIRE 144 960 224 960
            WIRE 224 960 480 960
            WIRE 480 960 480 1120
            WIRE 480 960 896 960
            WIRE 896 960 896 1120
            WIRE 896 960 1328 960
            WIRE 1328 960 1328 1120
            WIRE 1328 960 1744 960
            WIRE 1744 960 1744 1120
            WIRE 1744 960 2176 960
            WIRE 2176 960 2176 1120
            WIRE 2176 960 2592 960
            WIRE 2592 960 2592 1120
            WIRE 2592 960 3008 960
            WIRE 3008 960 3376 960
            WIRE 3008 960 3008 1120
            BEGIN DISPLAY 224 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH c1
            WIRE 144 848 304 848
            WIRE 304 848 544 848
            WIRE 544 848 544 1120
            WIRE 544 848 960 848
            WIRE 960 848 960 1120
            WIRE 960 848 1392 848
            WIRE 1392 848 1392 1120
            WIRE 1392 848 1808 848
            WIRE 1808 848 1808 1120
            WIRE 1808 848 2240 848
            WIRE 2240 848 2240 1120
            WIRE 2240 848 2656 848
            WIRE 2656 848 2656 1120
            WIRE 2656 848 3072 848
            WIRE 3072 848 3376 848
            WIRE 3072 848 3072 1120
            BEGIN DISPLAY 304 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 144 848 c1 R180 28
        IOMARKER 144 960 c0 R180 28
        IOMARKER 256 352 in1(6:0) R180 28
        IOMARKER 240 224 in2(6:0) R180 28
        IOMARKER 240 96 in3(6:0) R180 28
    END SHEET
END SCHEMATIC
