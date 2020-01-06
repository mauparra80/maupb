VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Out7
        SIGNAL Out3
        SIGNAL Out5
        SIGNAL Out6
        SIGNAL Out1
        SIGNAL Out2
        SIGNAL Out4
        SIGNAL Out0
        SIGNAL SN3
        SIGNAL SN2
        SIGNAL SN1
        SIGNAL S1
        SIGNAL S2
        SIGNAL S3
        PORT Output Out7
        PORT Output Out3
        PORT Output Out5
        PORT Output Out6
        PORT Output Out1
        PORT Output Out2
        PORT Output Out4
        PORT Output Out0
        PORT Input S1
        PORT Input S2
        PORT Input S3
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_25 and3
            PIN I0 S1
            PIN I1 S2
            PIN I2 S3
            PIN O Out7
        END BLOCK
        BEGIN BLOCK XLXI_26 and3
            PIN I0 S1
            PIN I1 S2
            PIN I2 SN3
            PIN O Out3
        END BLOCK
        BEGIN BLOCK XLXI_27 and3
            PIN I0 S1
            PIN I1 SN2
            PIN I2 S3
            PIN O Out5
        END BLOCK
        BEGIN BLOCK XLXI_28 and3
            PIN I0 S2
            PIN I1 S3
            PIN I2 SN1
            PIN O Out6
        END BLOCK
        BEGIN BLOCK XLXI_29 and3
            PIN I0 SN3
            PIN I1 SN2
            PIN I2 S1
            PIN O Out1
        END BLOCK
        BEGIN BLOCK XLXI_30 and3
            PIN I0 SN1
            PIN I1 S2
            PIN I2 SN3
            PIN O Out2
        END BLOCK
        BEGIN BLOCK XLXI_31 and3
            PIN I0 SN1
            PIN I1 SN2
            PIN I2 S3
            PIN O Out4
        END BLOCK
        BEGIN BLOCK XLXI_32 and3
            PIN I0 SN3
            PIN I1 SN2
            PIN I2 SN1
            PIN O Out0
        END BLOCK
        BEGIN BLOCK XLXI_23 inv
            PIN I S2
            PIN O SN2
        END BLOCK
        BEGIN BLOCK XLXI_22 inv
            PIN I S3
            PIN O SN3
        END BLOCK
        BEGIN BLOCK XLXI_24 inv
            PIN I S1
            PIN O SN1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_25 1872 576 R0
        INSTANCE XLXI_26 1872 800 R0
        INSTANCE XLXI_27 1872 1024 R0
        INSTANCE XLXI_28 1872 1248 R0
        INSTANCE XLXI_29 1872 1472 R0
        INSTANCE XLXI_30 1872 1712 R0
        INSTANCE XLXI_31 1872 1952 R0
        INSTANCE XLXI_32 1872 2192 R0
        BEGIN BRANCH Out7
            WIRE 2128 448 2144 448
            WIRE 2144 448 2144 464
            WIRE 2144 464 2368 464
            WIRE 2368 464 2528 464
            BEGIN DISPLAY 2368 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Out3
            WIRE 2128 672 2432 672
            WIRE 2432 672 2528 672
            BEGIN DISPLAY 2432 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Out5
            WIRE 2128 896 2400 896
            WIRE 2400 896 2560 896
            BEGIN DISPLAY 2400 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Out6
            WIRE 2128 1120 2432 1120
            WIRE 2432 1120 2528 1120
            BEGIN DISPLAY 2432 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Out1
            WIRE 2128 1344 2432 1344
            WIRE 2432 1344 2528 1344
            BEGIN DISPLAY 2432 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Out2
            WIRE 2128 1584 2432 1584
            WIRE 2432 1584 2528 1584
            BEGIN DISPLAY 2432 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Out4
            WIRE 2128 1824 2384 1824
            WIRE 2384 1824 2512 1824
            BEGIN DISPLAY 2384 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Out0
            WIRE 2128 2064 2416 2064
            WIRE 2416 2064 2528 2064
            BEGIN DISPLAY 2416 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2528 464 Out7 R0 28
        IOMARKER 2528 672 Out3 R0 28
        IOMARKER 2560 896 Out5 R0 28
        IOMARKER 2528 1120 Out6 R0 28
        IOMARKER 2512 1824 Out4 R0 28
        IOMARKER 2528 1584 Out2 R0 28
        IOMARKER 2528 1344 Out1 R0 28
        INSTANCE XLXI_24 1152 1472 R0
        INSTANCE XLXI_22 1136 608 R0
        BEGIN BRANCH S1
            WIRE 576 1616 720 1616
            WIRE 720 1616 1088 1616
            WIRE 720 512 1872 512
            WIRE 720 512 720 736
            WIRE 720 736 720 960
            WIRE 720 960 720 1616
            WIRE 720 960 1872 960
            WIRE 720 736 1872 736
            WIRE 1088 1280 1872 1280
            WIRE 1088 1280 1088 1440
            WIRE 1088 1440 1152 1440
            WIRE 1088 1440 1088 1616
            BEGIN DISPLAY 1088 1616 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S3
            WIRE 576 576 672 576
            WIRE 672 576 848 576
            WIRE 848 576 880 576
            WIRE 880 576 1136 576
            WIRE 880 576 880 832
            WIRE 880 832 880 1120
            WIRE 880 1120 1872 1120
            WIRE 880 1120 880 1760
            WIRE 880 1760 1872 1760
            WIRE 880 832 1872 832
            WIRE 848 384 1872 384
            WIRE 848 384 848 576
            BEGIN DISPLAY 672 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SN2
            WIRE 1280 1024 1376 1024
            WIRE 1376 1024 1552 1024
            WIRE 1552 1024 1552 1344
            WIRE 1552 1344 1872 1344
            WIRE 1552 1344 1552 1824
            WIRE 1552 1824 1552 2064
            WIRE 1552 2064 1872 2064
            WIRE 1552 1824 1872 1824
            WIRE 1552 896 1872 896
            WIRE 1552 896 1552 1024
            BEGIN DISPLAY 1376 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_23 1056 1056 R0
        BEGIN BRANCH SN3
            WIRE 1360 576 1392 576
            WIRE 1392 576 1488 576
            WIRE 1488 576 1488 608
            WIRE 1488 608 1872 608
            WIRE 1488 608 1488 1408
            WIRE 1488 1408 1488 1520
            WIRE 1488 1520 1872 1520
            WIRE 1488 1520 1488 2128
            WIRE 1488 2128 1872 2128
            WIRE 1488 1408 1872 1408
            BEGIN DISPLAY 1392 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S2
            WIRE 576 1024 672 1024
            WIRE 672 1024 992 1024
            WIRE 992 1024 1056 1024
            WIRE 992 1024 992 1184
            WIRE 992 1184 992 1584
            WIRE 992 1584 1872 1584
            WIRE 992 1184 1872 1184
            WIRE 992 448 1872 448
            WIRE 992 448 992 672
            WIRE 992 672 1872 672
            WIRE 992 672 992 1024
            BEGIN DISPLAY 672 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SN1
            WIRE 1376 1440 1424 1440
            WIRE 1424 1440 1616 1440
            WIRE 1616 1440 1616 1648
            WIRE 1616 1648 1872 1648
            WIRE 1616 1648 1616 1888
            WIRE 1616 1888 1872 1888
            WIRE 1616 1888 1616 2000
            WIRE 1616 2000 1872 2000
            WIRE 1616 1056 1616 1440
            WIRE 1616 1056 1872 1056
            BEGIN DISPLAY 1424 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 576 576 S3 R180 28
        IOMARKER 576 1024 S2 R180 28
        IOMARKER 576 1616 S1 R180 28
        IOMARKER 2528 2064 Out0 R0 28
    END SHEET
END SCHEMATIC
