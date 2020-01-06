VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_11
        SIGNAL XLXN_14
        SIGNAL XLXN_16
        SIGNAL XLXN_18
        SIGNAL in3
        SIGNAL in2
        SIGNAL in1
        SIGNAL in0
        SIGNAL XLXN_5
        SIGNAL XLXN_4
        SIGNAL XLXN_2
        SIGNAL XLXN_1
        SIGNAL mux_out
        PORT Input in3
        PORT Input in2
        PORT Input in1
        PORT Input in0
        PORT Output mux_out
        BEGIN BLOCKDEF and3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -176 144 -176 
            LINE N 144 -80 64 -80 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 64 -64 64 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF or4
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 48 -256 
            LINE N 256 -160 192 -160 
            ARC N 28 -208 204 -32 192 -160 112 -208 
            LINE N 112 -208 48 -208 
            LINE N 112 -112 48 -112 
            LINE N 48 -256 48 -208 
            LINE N 48 -64 48 -112 
            ARC N -40 -216 72 -104 48 -112 48 -208 
            ARC N 28 -288 204 -112 112 -112 192 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_6 inv
            PIN I
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_5 or4
            PIN I0 XLXN_5
            PIN I1 XLXN_4
            PIN I2 XLXN_2
            PIN I3 XLXN_1
            PIN O mux_out
        END BLOCK
        BEGIN BLOCK XLXI_4 and3
            PIN I0 XLXN_8
            PIN I1 XLXN_9
            PIN I2 in3
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_3 and3
            PIN I0 XLXN_6
            PIN I1 XLXN_9
            PIN I2 in2
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 and3
            PIN I0 XLXN_8
            PIN I1 XLXN_7
            PIN I2 in1
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_1 and3
            PIN I0 XLXN_6
            PIN I1 XLXN_7
            PIN I2 in0
            PIN O XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_6 704 208 R90
        INSTANCE XLXI_7 464 208 R90
        BEGIN BRANCH XLXN_9
            WIRE 416 208 416 1104
            WIRE 416 1104 416 1360
            WIRE 416 1360 416 1584
            WIRE 416 1360 1616 1360
            WIRE 416 1104 1616 1104
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 496 432 496 592
            WIRE 496 592 496 848
            WIRE 496 848 496 1568
            WIRE 496 848 1616 848
            WIRE 496 592 1616 592
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 656 192 656 928
            WIRE 656 928 656 1440
            WIRE 656 1440 656 1568
            WIRE 656 1440 1616 1440
            WIRE 656 928 1616 928
            WIRE 1616 912 1616 928
            WIRE 1616 1424 1616 1440
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 736 432 736 672
            WIRE 736 672 736 1184
            WIRE 736 1184 736 1568
            WIRE 736 1184 1616 1184
            WIRE 736 672 1616 672
            WIRE 1616 656 1616 672
            WIRE 1616 1168 1616 1184
        END BRANCH
        IOMARKER 1392 1296 in3 R180 28
        BEGIN BRANCH in3
            WIRE 1392 1296 1616 1296
        END BRANCH
        IOMARKER 1392 1040 in2 R180 28
        BEGIN BRANCH in2
            WIRE 1392 1040 1616 1040
        END BRANCH
        IOMARKER 1392 784 in1 R180 28
        BEGIN BRANCH in1
            WIRE 1392 784 1616 784
        END BRANCH
        IOMARKER 1392 528 in0 R180 28
        BEGIN BRANCH in0
            WIRE 1392 528 1616 528
        END BRANCH
        INSTANCE XLXI_5 2208 848 R0
        INSTANCE XLXI_4 1616 1488 R0
        INSTANCE XLXI_3 1616 1232 R0
        INSTANCE XLXI_2 1616 976 R0
        INSTANCE XLXI_1 1616 720 R0
        BEGIN BRANCH XLXN_5
            WIRE 1872 1360 2080 1360
            WIRE 2080 784 2080 1360
            WIRE 2080 784 2208 784
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1872 1104 2048 1104
            WIRE 2048 720 2208 720
            WIRE 2048 720 2048 1104
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1872 848 2016 848
            WIRE 2016 656 2016 848
            WIRE 2016 656 2208 656
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 1872 592 2208 592
        END BRANCH
        BEGIN BRANCH mux_out
            WIRE 2464 688 2576 688
        END BRANCH
        IOMARKER 2576 688 mux_out R0 28
    END SHEET
END SCHEMATIC
