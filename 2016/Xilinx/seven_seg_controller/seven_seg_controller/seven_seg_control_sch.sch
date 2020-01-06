VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Qout(15:0)
        SIGNAL Qout(14)
        SIGNAL Qout(15)
        SIGNAL XLXN_22
        SIGNAL XLXN_24
        SIGNAL CLK
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL EN_MR
        SIGNAL EN_L
        SIGNAL EN_ML
        SIGNAL EN_R
        SIGNAL XLXN_26
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL L(6:0)
        SIGNAL ML(6:0)
        SIGNAL MR(6:0)
        SIGNAL R(6:0)
        SIGNAL seven_seg_out(6:0)
        PORT Input CLK
        PORT Output EN_MR
        PORT Output EN_L
        PORT Output EN_ML
        PORT Output EN_R
        PORT Input L(6:0)
        PORT Input ML(6:0)
        PORT Input MR(6:0)
        PORT Input R(6:0)
        PORT Output seven_seg_out(6:0)
        BEGIN BLOCKDEF mux4_7bit_sch
            TIMESTAMP 2007 2 10 7 15 46
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 64 -256 320 128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -128 320 -128 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF d2_4e
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 384 -128 320 -128 
            LINE N 384 -192 320 -192 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 mux4_7bit_sch
            PIN in1(6:0) ML(6:0)
            PIN in2(6:0) MR(6:0)
            PIN in3(6:0) R(6:0)
            PIN in0(6:0) L(6:0)
            PIN mux_out(6:0) seven_seg_out(6:0)
            PIN c0 Qout(14)
            PIN c1 Qout(15)
        END BLOCK
        BEGIN BLOCK XLXI_2 cb16ce
            PIN C CLK
            PIN CE XLXN_24
            PIN CLR XLXN_22
            PIN CEO
            PIN Q(15:0) Qout(15:0)
            PIN TC XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_15 vcc
            PIN P XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_3 d2_4e
            PIN A0 Qout(14)
            PIN A1 Qout(15)
            PIN E XLXN_26
            PIN D0 XLXN_4
            PIN D1 XLXN_3
            PIN D2 XLXN_2
            PIN D3 XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_5 inv
            PIN I XLXN_3
            PIN O EN_ML
        END BLOCK
        BEGIN BLOCK XLXI_6 inv
            PIN I XLXN_2
            PIN O EN_MR
        END BLOCK
        BEGIN BLOCK XLXI_7 inv
            PIN I XLXN_1
            PIN O EN_R
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I XLXN_4
            PIN O EN_L
        END BLOCK
        BEGIN BLOCK XLXI_16 vcc
            PIN P XLXN_26
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1552 608 R0
        END INSTANCE
        BUSTAP 1216 832 1312 832
        BEGIN BRANCH Qout(14)
            WIRE 1312 832 1360 832
            WIRE 1360 832 1472 832
            WIRE 1472 832 1472 1088
            WIRE 1472 1088 1488 1088
            WIRE 1472 640 1552 640
            WIRE 1472 640 1472 832
            BEGIN DISPLAY 1360 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1216 896 1312 896
        BEGIN BRANCH Qout(15)
            WIRE 1312 896 1360 896
            WIRE 1360 896 1440 896
            WIRE 1440 896 1440 1152
            WIRE 1440 1152 1488 1152
            WIRE 1440 704 1440 896
            WIRE 1440 704 1552 704
            BEGIN DISPLAY 1360 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_2 784 1312 R0
        BEGIN BRANCH XLXN_22
            WIRE 784 1280 784 1344
            WIRE 784 1344 1248 1344
            WIRE 1168 1184 1248 1184
            WIRE 1248 1184 1248 1344
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 688 1008 688 1120
            WIRE 688 1120 784 1120
        END BRANCH
        INSTANCE XLXI_15 624 1008 R0
        BEGIN BRANCH CLK
            WIRE 688 1184 720 1184
            WIRE 720 1184 784 1184
            BEGIN DISPLAY 720 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 688 1184 CLK R180 28
        BEGIN BRANCH Qout(15:0)
            WIRE 1168 1056 1216 1056
            WIRE 1216 832 1216 896
            WIRE 1216 896 1216 1024
            WIRE 1216 1024 1216 1056
            BEGIN DISPLAY 1216 1024 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 1872 1280 1968 1280
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1872 1216 2080 1216
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1872 1152 1968 1152
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1872 1088 2080 1088
        END BRANCH
        BEGIN BRANCH EN_MR
            WIRE 2304 1216 2400 1216
        END BRANCH
        BEGIN BRANCH EN_L
            WIRE 2304 1088 2400 1088
        END BRANCH
        BEGIN BRANCH EN_ML
            WIRE 2192 1152 2400 1152
        END BRANCH
        BEGIN BRANCH EN_R
            WIRE 2192 1280 2400 1280
        END BRANCH
        INSTANCE XLXI_3 1488 1408 R0
        INSTANCE XLXI_5 1968 1184 R0
        INSTANCE XLXI_6 2080 1248 R0
        INSTANCE XLXI_7 1968 1312 R0
        INSTANCE XLXI_4 2080 1120 R0
        INSTANCE XLXI_16 1344 1264 R0
        BEGIN BRANCH XLXN_26
            WIRE 1408 1264 1408 1280
            WIRE 1408 1280 1488 1280
        END BRANCH
        BEGIN BRANCH L(6:0)
            WIRE 1360 384 1408 384
            WIRE 1408 384 1424 384
            WIRE 1424 384 1552 384
            BEGIN DISPLAY 1408 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ML(6:0)
            WIRE 1360 448 1392 448
            WIRE 1392 448 1424 448
            WIRE 1424 448 1552 448
            BEGIN DISPLAY 1392 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MR(6:0)
            WIRE 1360 512 1392 512
            WIRE 1392 512 1424 512
            WIRE 1424 512 1552 512
            BEGIN DISPLAY 1392 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH R(6:0)
            WIRE 1360 576 1408 576
            WIRE 1408 576 1424 576
            WIRE 1424 576 1552 576
            BEGIN DISPLAY 1408 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1360 384 L(6:0) R180 28
        IOMARKER 1360 448 ML(6:0) R180 28
        IOMARKER 1360 512 MR(6:0) R180 28
        IOMARKER 1360 576 R(6:0) R180 28
        BEGIN BRANCH seven_seg_out(6:0)
            WIRE 1936 384 2000 384
            WIRE 2000 384 2032 384
            WIRE 2032 384 2080 384
            BEGIN DISPLAY 2000 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2400 1088 EN_L R0 28
        IOMARKER 2400 1152 EN_ML R0 28
        IOMARKER 2400 1216 EN_MR R0 28
        IOMARKER 2400 1280 EN_R R0 28
        IOMARKER 2080 384 seven_seg_out(6:0) R0 28
    END SHEET
END SCHEMATIC
