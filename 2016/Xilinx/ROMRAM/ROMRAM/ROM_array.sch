VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan2"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ADDR(3)
        SIGNAL ADDR(4)
        SIGNAL A2(7:0)
        SIGNAL A1(0)
        SIGNAL A1(3)
        SIGNAL A1(2)
        SIGNAL A1(4)
        SIGNAL A1(6)
        SIGNAL A1(5)
        SIGNAL A1(7)
        SIGNAL A2(0)
        SIGNAL A2(1)
        SIGNAL A2(3)
        SIGNAL A2(2)
        SIGNAL A2(4)
        SIGNAL A2(6)
        SIGNAL A2(5)
        SIGNAL ADDR(1)
        SIGNAL A3(7:0)
        SIGNAL A3(0)
        SIGNAL A3(1)
        SIGNAL A3(3)
        SIGNAL A3(2)
        SIGNAL A3(4)
        SIGNAL A3(6)
        SIGNAL A3(5)
        SIGNAL A3(7)
        SIGNAL A4(7:0)
        SIGNAL A4(0)
        SIGNAL A4(3)
        SIGNAL A4(2)
        SIGNAL A4(4)
        SIGNAL A4(6)
        SIGNAL A4(5)
        SIGNAL A4(7)
        SIGNAL ADDR(2)
        SIGNAL A5(7:0)
        SIGNAL A5(0)
        SIGNAL A5(1)
        SIGNAL A5(3)
        SIGNAL A5(2)
        SIGNAL A5(4)
        SIGNAL A5(6)
        SIGNAL A5(5)
        SIGNAL A6(7:0)
        SIGNAL A6(7)
        SIGNAL A6(6)
        SIGNAL A6(4)
        SIGNAL A6(5)
        SIGNAL A7(7:0)
        SIGNAL A7(0)
        SIGNAL A7(1)
        SIGNAL A7(3)
        SIGNAL A7(2)
        SIGNAL A7(4)
        SIGNAL A7(6)
        SIGNAL A7(5)
        SIGNAL A7(7)
        SIGNAL ADDR(0)
        SIGNAL A8(7:0)
        SIGNAL A8(0)
        SIGNAL A8(1)
        SIGNAL A8(3)
        SIGNAL A8(2)
        SIGNAL A8(4)
        SIGNAL A8(6)
        SIGNAL A8(5)
        SIGNAL A8(7)
        SIGNAL A1(7:0)
        SIGNAL A2(7)
        SIGNAL A4(1)
        SIGNAL A5(7)
        SIGNAL A6(3)
        SIGNAL A6(2)
        SIGNAL A6(1)
        SIGNAL A6(0)
        SIGNAL A1(1)
        SIGNAL ADDR(7:0)
        SIGNAL DATA_OUT(7:0)
        SIGNAL XLXN_4
        SIGNAL ADDR(7)
        SIGNAL XLXN_6
        SIGNAL ADDR(6)
        SIGNAL XLXN_8
        SIGNAL ADDR(5)
        PORT Input ADDR(7:0)
        PORT Output DATA_OUT(7:0)
        BEGIN BLOCKDEF rom32x1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -384 320 -384 
            LINE N 0 -192 64 -192 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -128 64 -128 
            RECTANGLE N 64 -448 320 -64 
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
        BEGIN BLOCK XLXI_1 bus8_mux
            PIN DIN0(7:0) A1(7:0)
            PIN DIN1(7:0) A2(7:0)
            PIN DIN2(7:0) A3(7:0)
            PIN DIN3(7:0) A4(7:0)
            PIN DIN4(7:0) A5(7:0)
            PIN DIN5(7:0) A6(7:0)
            PIN DIN6(7:0) A7(7:0)
            PIN DIN7(7:0) A8(7:0)
            PIN DOUT(7:0) DATA_OUT(7:0)
            PIN S0 ADDR(5)
            PIN S1 ADDR(6)
            PIN S2 ADDR(7)
        END BLOCK
        BEGIN BLOCK XLXI_48 rom32x1
            BEGIN ATTR INIT "0006EEEE"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 32 h
            END ATTR
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(0)
        END BLOCK
        BEGIN BLOCK XLXI_47 rom32x1
            BEGIN ATTR INIT "00005050"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 32 h
            END ATTR
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(1)
        END BLOCK
        BEGIN BLOCK XLXI_46 rom32x1
            BEGIN ATTR INIT "00105501"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 32 h
            END ATTR
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(2)
        END BLOCK
        BEGIN BLOCK XLXI_45 rom32x1
            BEGIN ATTR INIT "00050000"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 32 h
            END ATTR
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(3)
        END BLOCK
        BEGIN BLOCK XLXI_44 rom32x1
            BEGIN ATTR INIT "00080000"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 32 h
            END ATTR
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(4)
        END BLOCK
        BEGIN BLOCK XLXI_43 rom32x1
            BEGIN ATTR INIT "00100000"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 32 h
            END ATTR
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(5)
        END BLOCK
        BEGIN BLOCK XLXI_42 rom32x1
            BEGIN ATTR INIT "00100000"
                VERILOG all:0 dp:1nosynth wsynop:1 wsynth:1
                VHDL all:0 gm:1nosynth wa:1 wd:1
                VALUETYPE BitVector 32 h
            END ATTR
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(6)
        END BLOCK
        BEGIN BLOCK XLXI_9 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A1(7)
        END BLOCK
        BEGIN BLOCK XLXI_65 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(0)
        END BLOCK
        BEGIN BLOCK XLXI_66 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(1)
        END BLOCK
        BEGIN BLOCK XLXI_67 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(2)
        END BLOCK
        BEGIN BLOCK XLXI_68 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(3)
        END BLOCK
        BEGIN BLOCK XLXI_69 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(4)
        END BLOCK
        BEGIN BLOCK XLXI_70 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(5)
        END BLOCK
        BEGIN BLOCK XLXI_71 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(6)
        END BLOCK
        BEGIN BLOCK XLXI_72 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A2(7)
        END BLOCK
        BEGIN BLOCK XLXI_73 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(0)
        END BLOCK
        BEGIN BLOCK XLXI_74 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(1)
        END BLOCK
        BEGIN BLOCK XLXI_75 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(2)
        END BLOCK
        BEGIN BLOCK XLXI_76 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(3)
        END BLOCK
        BEGIN BLOCK XLXI_77 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(4)
        END BLOCK
        BEGIN BLOCK XLXI_78 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(5)
        END BLOCK
        BEGIN BLOCK XLXI_79 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(6)
        END BLOCK
        BEGIN BLOCK XLXI_80 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A3(7)
        END BLOCK
        BEGIN BLOCK XLXI_81 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(0)
        END BLOCK
        BEGIN BLOCK XLXI_82 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(1)
        END BLOCK
        BEGIN BLOCK XLXI_83 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(2)
        END BLOCK
        BEGIN BLOCK XLXI_84 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(3)
        END BLOCK
        BEGIN BLOCK XLXI_85 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(4)
        END BLOCK
        BEGIN BLOCK XLXI_86 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(5)
        END BLOCK
        BEGIN BLOCK XLXI_87 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(6)
        END BLOCK
        BEGIN BLOCK XLXI_88 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A4(7)
        END BLOCK
        BEGIN BLOCK XLXI_155 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(0)
        END BLOCK
        BEGIN BLOCK XLXI_156 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(1)
        END BLOCK
        BEGIN BLOCK XLXI_157 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(2)
        END BLOCK
        BEGIN BLOCK XLXI_158 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(3)
        END BLOCK
        BEGIN BLOCK XLXI_159 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(4)
        END BLOCK
        BEGIN BLOCK XLXI_160 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(5)
        END BLOCK
        BEGIN BLOCK XLXI_161 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(6)
        END BLOCK
        BEGIN BLOCK XLXI_162 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A5(7)
        END BLOCK
        BEGIN BLOCK XLXI_163 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(0)
        END BLOCK
        BEGIN BLOCK XLXI_164 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(1)
        END BLOCK
        BEGIN BLOCK XLXI_165 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(2)
        END BLOCK
        BEGIN BLOCK XLXI_166 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(3)
        END BLOCK
        BEGIN BLOCK XLXI_167 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(4)
        END BLOCK
        BEGIN BLOCK XLXI_168 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(5)
        END BLOCK
        BEGIN BLOCK XLXI_169 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(6)
        END BLOCK
        BEGIN BLOCK XLXI_170 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A6(7)
        END BLOCK
        BEGIN BLOCK XLXI_171 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(0)
        END BLOCK
        BEGIN BLOCK XLXI_172 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(1)
        END BLOCK
        BEGIN BLOCK XLXI_173 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(2)
        END BLOCK
        BEGIN BLOCK XLXI_174 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(3)
        END BLOCK
        BEGIN BLOCK XLXI_175 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(4)
        END BLOCK
        BEGIN BLOCK XLXI_176 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(5)
        END BLOCK
        BEGIN BLOCK XLXI_177 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(6)
        END BLOCK
        BEGIN BLOCK XLXI_178 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A7(7)
        END BLOCK
        BEGIN BLOCK XLXI_179 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(0)
        END BLOCK
        BEGIN BLOCK XLXI_180 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(1)
        END BLOCK
        BEGIN BLOCK XLXI_181 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(2)
        END BLOCK
        BEGIN BLOCK XLXI_182 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(3)
        END BLOCK
        BEGIN BLOCK XLXI_183 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(4)
        END BLOCK
        BEGIN BLOCK XLXI_184 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(5)
        END BLOCK
        BEGIN BLOCK XLXI_185 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(6)
        END BLOCK
        BEGIN BLOCK XLXI_186 rom32x1
            PIN A0 ADDR(0)
            PIN A1 ADDR(1)
            PIN A2 ADDR(2)
            PIN A3 ADDR(3)
            PIN A4 ADDR(4)
            PIN O A8(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7609 5382
        ATTR LengthUnitName "CM"
        ATTR GridsPerUnit "4"
        BEGIN BRANCH A1(7:0)
            WIRE 864 16 1120 16
            WIRE 1120 16 1248 16
            WIRE 1248 16 1952 16
            WIRE 1952 16 2656 16
            WIRE 2656 16 3360 16
            WIRE 3360 16 4096 16
            WIRE 4096 16 4784 16
            WIRE 4784 16 5520 16
            WIRE 5520 16 6208 16
            WIRE 6208 16 6304 16
            WIRE 6304 16 6304 1760
            WIRE 6304 1760 6688 1760
            BEGIN DISPLAY 1120 16 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(0)
            WIRE 6144 144 6176 144
            WIRE 6176 144 6208 144
            WIRE 6208 144 6208 272
            WIRE 6208 272 6256 272
            WIRE 6208 112 6208 128
            WIRE 6208 128 6240 128
            WIRE 6240 112 6240 128
            WIRE 6240 112 6256 112
            WIRE 6256 112 6256 272
            BEGIN DISPLAY 6176 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(1)
            WIRE 5456 144 5488 144
            WIRE 5488 144 5520 144
            WIRE 5520 112 5520 144
            BEGIN DISPLAY 5488 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(3)
            WIRE 4016 144 4064 144
            WIRE 4064 144 4096 144
            WIRE 4096 112 4096 144
            BEGIN DISPLAY 4064 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(2)
            WIRE 4704 144 4736 144
            WIRE 4736 144 4784 144
            WIRE 4784 112 4784 144
            BEGIN DISPLAY 4736 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(4)
            WIRE 3280 144 3328 144
            WIRE 3328 144 3360 144
            WIRE 3360 112 3360 144
            BEGIN DISPLAY 3328 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(6)
            WIRE 1856 144 1888 144
            WIRE 1888 144 1952 144
            WIRE 1952 112 1952 144
            BEGIN DISPLAY 1888 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(5)
            WIRE 2592 144 2608 144
            WIRE 2608 144 2656 144
            WIRE 2656 112 2656 144
            BEGIN DISPLAY 2608 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A1(7)
            WIRE 1168 144 1200 144
            WIRE 1200 144 1248 144
            WIRE 1248 112 1248 144
            BEGIN DISPLAY 1200 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(7:0)
            WIRE 784 688 1104 688
            WIRE 1104 688 1168 688
            WIRE 1168 688 1872 688
            WIRE 1872 688 2576 688
            WIRE 2576 688 3280 688
            WIRE 3280 688 4016 688
            WIRE 4016 688 4704 688
            WIRE 4704 688 5440 688
            WIRE 5440 688 6128 688
            WIRE 6128 688 6368 688
            WIRE 6368 688 6368 1824
            WIRE 6368 1824 6688 1824
            BEGIN DISPLAY 1104 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(0)
            WIRE 6064 816 6080 816
            WIRE 6080 816 6128 816
            WIRE 6128 784 6128 816
            BEGIN DISPLAY 6080 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(1)
            WIRE 5376 816 5408 816
            WIRE 5408 816 5440 816
            WIRE 5440 784 5440 816
            BEGIN DISPLAY 5408 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(3)
            WIRE 3936 816 4016 816
            WIRE 4016 784 4016 816
            BEGIN DISPLAY 4016 816 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(2)
            WIRE 4624 816 4704 816
            WIRE 4704 784 4704 816
            BEGIN DISPLAY 4704 816 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(4)
            WIRE 3200 816 3216 816
            WIRE 3216 816 3280 816
            WIRE 3280 784 3280 816
            BEGIN DISPLAY 3216 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(6)
            WIRE 1776 816 1840 816
            WIRE 1840 816 1872 816
            WIRE 1872 784 1872 816
            BEGIN DISPLAY 1840 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(5)
            WIRE 2512 816 2544 816
            WIRE 2544 816 2576 816
            WIRE 2576 784 2576 816
            BEGIN DISPLAY 2544 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A2(7)
            WIRE 1088 816 1104 816
            WIRE 1104 816 1168 816
            WIRE 1168 784 1168 816
            BEGIN DISPLAY 1104 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(7:0)
            WIRE 768 1360 1024 1360
            WIRE 1024 1360 1152 1360
            WIRE 1152 1360 1856 1360
            WIRE 1856 1360 2560 1360
            WIRE 2560 1360 3264 1360
            WIRE 3264 1360 4000 1360
            WIRE 4000 1360 4688 1360
            WIRE 4688 1360 5424 1360
            WIRE 5424 1360 6112 1360
            WIRE 6112 1360 6416 1360
            WIRE 6416 1360 6416 1888
            WIRE 6416 1888 6688 1888
            BEGIN DISPLAY 1024 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(0)
            WIRE 6048 1488 6064 1488
            WIRE 6064 1488 6112 1488
            WIRE 6112 1456 6112 1488
            BEGIN DISPLAY 6064 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(1)
            WIRE 5360 1488 5376 1488
            WIRE 5376 1488 5424 1488
            WIRE 5424 1456 5424 1488
            BEGIN DISPLAY 5376 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(3)
            WIRE 3920 1488 3936 1488
            WIRE 3936 1488 4000 1488
            WIRE 4000 1456 4000 1488
            BEGIN DISPLAY 3936 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(2)
            WIRE 4608 1488 4640 1488
            WIRE 4640 1488 4688 1488
            WIRE 4688 1456 4688 1488
            BEGIN DISPLAY 4640 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(4)
            WIRE 3184 1488 3200 1488
            WIRE 3200 1488 3264 1488
            WIRE 3264 1456 3264 1488
            BEGIN DISPLAY 3200 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(6)
            WIRE 1760 1488 1792 1488
            WIRE 1792 1488 1856 1488
            WIRE 1856 1456 1856 1488
            BEGIN DISPLAY 1792 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(5)
            WIRE 2496 1488 2512 1488
            WIRE 2512 1488 2560 1488
            WIRE 2560 1456 2560 1488
            BEGIN DISPLAY 2512 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A3(7)
            WIRE 1072 1488 1088 1488
            WIRE 1088 1488 1152 1488
            WIRE 1152 1456 1152 1488
            BEGIN DISPLAY 1088 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(7:0)
            WIRE 688 2032 1008 2032
            WIRE 1008 2032 1072 2032
            WIRE 1072 2032 1776 2032
            WIRE 1776 2032 2480 2032
            WIRE 2480 2032 3184 2032
            WIRE 3184 2032 3920 2032
            WIRE 3920 2032 4608 2032
            WIRE 4608 2032 5344 2032
            WIRE 5344 2032 6032 2032
            WIRE 6032 2032 6272 2032
            WIRE 6272 1952 6688 1952
            WIRE 6272 1952 6272 2032
            BEGIN DISPLAY 1008 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(0)
            WIRE 5968 2160 6000 2160
            WIRE 6000 2160 6032 2160
            WIRE 6032 2128 6032 2160
            BEGIN DISPLAY 6000 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(1)
            WIRE 5280 2160 5296 2160
            WIRE 5296 2160 5344 2160
            WIRE 5344 2128 5344 2160
            BEGIN DISPLAY 5296 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(3)
            WIRE 3840 2160 3856 2160
            WIRE 3856 2160 3920 2160
            WIRE 3920 2128 3920 2160
            BEGIN DISPLAY 3856 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(2)
            WIRE 4528 2160 4560 2160
            WIRE 4560 2160 4608 2160
            WIRE 4608 2128 4608 2160
            BEGIN DISPLAY 4560 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(4)
            WIRE 3104 2160 3136 2160
            WIRE 3136 2160 3184 2160
            WIRE 3184 2128 3184 2160
            BEGIN DISPLAY 3136 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(6)
            WIRE 1680 2160 1728 2160
            WIRE 1728 2160 1776 2160
            WIRE 1776 2128 1776 2160
            BEGIN DISPLAY 1728 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(5)
            WIRE 2416 2160 2432 2160
            WIRE 2432 2160 2480 2160
            WIRE 2480 2128 2480 2160
            BEGIN DISPLAY 2432 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A4(7)
            WIRE 992 2160 1024 2160
            WIRE 1024 2160 1072 2160
            WIRE 1072 2128 1072 2160
            BEGIN DISPLAY 1024 2160 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 6208 16 6208 112
        BUSTAP 5520 16 5520 112
        BUSTAP 4784 16 4784 112
        BUSTAP 4096 16 4096 112
        BUSTAP 3360 16 3360 112
        BUSTAP 2656 16 2656 112
        BUSTAP 1952 16 1952 112
        BUSTAP 1248 16 1248 112
        BEGIN INSTANCE XLXI_48 5760 528 R0
            BEGIN DISPLAY -160 -468 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_47 5072 528 R0
            BEGIN DISPLAY -144 -468 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_46 4320 528 R0
            BEGIN DISPLAY -128 -468 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_45 3632 528 R0
            BEGIN DISPLAY -128 -468 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_44 2896 528 R0
            BEGIN DISPLAY -128 -468 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_43 2208 528 R0
            BEGIN DISPLAY -128 -468 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_42 1472 528 R0
            BEGIN DISPLAY -128 -468 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE XLXI_9 784 528 R0
            BEGIN DISPLAY -128 -484 ATTR INIT
                FONT 28 "Arial"
                DISPLAYFORMAT NAMEEQUALSVALUE
            END DISPLAY
        END INSTANCE
        BUSTAP 6128 688 6128 784
        BUSTAP 5440 688 5440 784
        BUSTAP 4704 688 4704 784
        BUSTAP 4016 688 4016 784
        BUSTAP 3280 688 3280 784
        BUSTAP 2576 688 2576 784
        BUSTAP 1872 688 1872 784
        BUSTAP 1168 688 1168 784
        INSTANCE XLXI_65 5680 1200 R0
        INSTANCE XLXI_66 4992 1200 R0
        INSTANCE XLXI_67 4240 1200 R0
        INSTANCE XLXI_68 3552 1200 R0
        INSTANCE XLXI_69 2816 1200 R0
        INSTANCE XLXI_70 2128 1200 R0
        INSTANCE XLXI_71 1392 1200 R0
        INSTANCE XLXI_72 704 1200 R0
        BUSTAP 6112 1360 6112 1456
        BUSTAP 5424 1360 5424 1456
        BUSTAP 4688 1360 4688 1456
        BUSTAP 4000 1360 4000 1456
        BUSTAP 3264 1360 3264 1456
        BUSTAP 2560 1360 2560 1456
        BUSTAP 1856 1360 1856 1456
        BUSTAP 1152 1360 1152 1456
        INSTANCE XLXI_73 5664 1872 R0
        INSTANCE XLXI_74 4976 1872 R0
        INSTANCE XLXI_75 4224 1872 R0
        INSTANCE XLXI_76 3536 1872 R0
        INSTANCE XLXI_77 2800 1872 R0
        INSTANCE XLXI_78 2112 1872 R0
        INSTANCE XLXI_79 1376 1872 R0
        INSTANCE XLXI_80 688 1872 R0
        BUSTAP 6032 2032 6032 2128
        BUSTAP 5344 2032 5344 2128
        BUSTAP 4608 2032 4608 2128
        BUSTAP 3920 2032 3920 2128
        BUSTAP 3184 2032 3184 2128
        BUSTAP 2480 2032 2480 2128
        BUSTAP 1776 2032 1776 2128
        BUSTAP 1072 2032 1072 2128
        INSTANCE XLXI_81 5584 2544 R0
        INSTANCE XLXI_82 4896 2544 R0
        INSTANCE XLXI_83 4144 2544 R0
        INSTANCE XLXI_84 3456 2544 R0
        INSTANCE XLXI_85 2720 2544 R0
        INSTANCE XLXI_86 2032 2544 R0
        INSTANCE XLXI_87 1296 2544 R0
        INSTANCE XLXI_88 608 2544 R0
        BEGIN BRANCH A5(7:0)
            WIRE 688 2720 896 2720
            WIRE 896 2720 1072 2720
            WIRE 1072 2720 1776 2720
            WIRE 1776 2720 2480 2720
            WIRE 2480 2720 3184 2720
            WIRE 3184 2720 3920 2720
            WIRE 3920 2720 4608 2720
            WIRE 4608 2720 5344 2720
            WIRE 5344 2720 6032 2720
            WIRE 6032 2720 6400 2720
            WIRE 6400 2016 6400 2720
            WIRE 6400 2016 6688 2016
            BEGIN DISPLAY 896 2720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(0)
            WIRE 5968 2848 5984 2848
            WIRE 5984 2848 6032 2848
            WIRE 6032 2816 6032 2848
            BEGIN DISPLAY 5984 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(1)
            WIRE 5280 2848 5296 2848
            WIRE 5296 2848 5344 2848
            WIRE 5344 2816 5344 2848
            BEGIN DISPLAY 5296 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(3)
            WIRE 3840 2848 3872 2848
            WIRE 3872 2848 3920 2848
            WIRE 3920 2816 3920 2848
            BEGIN DISPLAY 3872 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(2)
            WIRE 4528 2848 4576 2848
            WIRE 4576 2848 4608 2848
            WIRE 4608 2816 4608 2848
            BEGIN DISPLAY 4576 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(4)
            WIRE 3104 2848 3120 2848
            WIRE 3120 2848 3184 2848
            WIRE 3184 2816 3184 2848
            BEGIN DISPLAY 3120 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(6)
            WIRE 1680 2848 1728 2848
            WIRE 1728 2848 1776 2848
            WIRE 1776 2816 1776 2848
            BEGIN DISPLAY 1728 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(5)
            WIRE 2416 2848 2448 2848
            WIRE 2448 2848 2480 2848
            WIRE 2480 2816 2480 2848
            BEGIN DISPLAY 2448 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A5(7)
            WIRE 992 2848 1024 2848
            WIRE 1024 2848 1072 2848
            WIRE 1072 2816 1072 2848
            BEGIN DISPLAY 1024 2848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(7:0)
            WIRE 608 3392 912 3392
            WIRE 912 3392 992 3392
            WIRE 992 3392 1696 3392
            WIRE 1696 3392 2400 3392
            WIRE 2400 3392 3104 3392
            WIRE 3104 3392 3840 3392
            WIRE 3840 3392 4528 3392
            WIRE 4528 3392 5264 3392
            WIRE 5264 3392 5952 3392
            WIRE 5952 3392 6416 3392
            WIRE 6416 2080 6416 3392
            WIRE 6416 2080 6688 2080
            BEGIN DISPLAY 912 3392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(0)
            WIRE 5888 3520 5920 3520
            WIRE 5920 3520 5952 3520
            WIRE 5952 3488 5952 3520
            BEGIN DISPLAY 5920 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(1)
            WIRE 5200 3520 5216 3520
            WIRE 5216 3520 5264 3520
            WIRE 5264 3488 5264 3520
            BEGIN DISPLAY 5216 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(3)
            WIRE 3760 3520 3792 3520
            WIRE 3792 3520 3840 3520
            WIRE 3840 3488 3840 3520
            BEGIN DISPLAY 3792 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(2)
            WIRE 4448 3520 4464 3520
            WIRE 4464 3520 4528 3520
            WIRE 4528 3488 4528 3520
            BEGIN DISPLAY 4464 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(4)
            WIRE 3024 3520 3040 3520
            WIRE 3040 3520 3104 3520
            WIRE 3104 3488 3104 3520
            BEGIN DISPLAY 3040 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(6)
            WIRE 1600 3520 1632 3520
            WIRE 1632 3520 1696 3520
            WIRE 1696 3488 1696 3520
            BEGIN DISPLAY 1632 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(5)
            WIRE 2336 3520 2352 3520
            WIRE 2352 3520 2400 3520
            WIRE 2400 3488 2400 3520
            BEGIN DISPLAY 2352 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A6(7)
            WIRE 912 3520 960 3520
            WIRE 960 3520 992 3520
            WIRE 992 3488 992 3520
            BEGIN DISPLAY 960 3520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(7:0)
            WIRE 592 4064 912 4064
            WIRE 912 4064 976 4064
            WIRE 976 4064 1680 4064
            WIRE 1680 4064 2384 4064
            WIRE 2384 4064 3088 4064
            WIRE 3088 4064 3824 4064
            WIRE 3824 4064 4512 4064
            WIRE 4512 4064 5248 4064
            WIRE 5248 4064 5936 4064
            WIRE 5936 4064 6432 4064
            WIRE 6432 2144 6432 4064
            WIRE 6432 2144 6688 2144
            BEGIN DISPLAY 912 4064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(0)
            WIRE 5872 4192 5888 4192
            WIRE 5888 4192 5936 4192
            WIRE 5936 4160 5936 4192
            BEGIN DISPLAY 5888 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(1)
            WIRE 5184 4192 5216 4192
            WIRE 5216 4192 5248 4192
            WIRE 5248 4160 5248 4192
            BEGIN DISPLAY 5216 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(3)
            WIRE 3744 4192 3760 4192
            WIRE 3760 4192 3824 4192
            WIRE 3824 4160 3824 4192
            BEGIN DISPLAY 3760 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(2)
            WIRE 4432 4192 4448 4192
            WIRE 4448 4192 4512 4192
            WIRE 4512 4160 4512 4192
            BEGIN DISPLAY 4448 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(4)
            WIRE 3008 4192 3040 4192
            WIRE 3040 4192 3088 4192
            WIRE 3088 4160 3088 4192
            BEGIN DISPLAY 3040 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(6)
            WIRE 1584 4192 1632 4192
            WIRE 1632 4192 1680 4192
            WIRE 1680 4160 1680 4192
            BEGIN DISPLAY 1632 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(5)
            WIRE 2320 4192 2352 4192
            WIRE 2352 4192 2384 4192
            WIRE 2384 4160 2384 4192
            BEGIN DISPLAY 2352 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A7(7)
            WIRE 896 4192 912 4192
            WIRE 912 4192 976 4192
            WIRE 976 4160 976 4192
            BEGIN DISPLAY 912 4192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(7:0)
            WIRE 512 4736 848 4736
            WIRE 848 4736 896 4736
            WIRE 896 4736 1600 4736
            WIRE 1600 4736 2304 4736
            WIRE 2304 4736 3008 4736
            WIRE 3008 4736 3744 4736
            WIRE 3744 4736 4432 4736
            WIRE 4432 4736 5168 4736
            WIRE 5168 4736 5856 4736
            WIRE 5856 4736 6448 4736
            WIRE 6448 2208 6448 4736
            WIRE 6448 2208 6688 2208
            BEGIN DISPLAY 848 4736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(0)
            WIRE 5792 4864 5808 4864
            WIRE 5808 4864 5856 4864
            WIRE 5856 4832 5856 4864
            BEGIN DISPLAY 5808 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(1)
            WIRE 5104 4864 5120 4864
            WIRE 5120 4864 5168 4864
            WIRE 5168 4832 5168 4864
            BEGIN DISPLAY 5120 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(3)
            WIRE 3664 4864 3712 4864
            WIRE 3712 4864 3744 4864
            WIRE 3744 4832 3744 4864
            BEGIN DISPLAY 3712 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(2)
            WIRE 4352 4864 4400 4864
            WIRE 4400 4864 4432 4864
            WIRE 4432 4832 4432 4864
            BEGIN DISPLAY 4400 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(4)
            WIRE 2928 4864 2960 4864
            WIRE 2960 4864 3008 4864
            WIRE 3008 4832 3008 4864
            BEGIN DISPLAY 2960 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(6)
            WIRE 1504 4864 1536 4864
            WIRE 1536 4864 1600 4864
            WIRE 1600 4832 1600 4864
            BEGIN DISPLAY 1536 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(5)
            WIRE 2240 4864 2256 4864
            WIRE 2256 4864 2304 4864
            WIRE 2304 4832 2304 4864
            BEGIN DISPLAY 2256 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A8(7)
            WIRE 816 4864 848 4864
            WIRE 848 4864 896 4864
            WIRE 896 4832 896 4864
            BEGIN DISPLAY 848 4864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 6032 2720 6032 2816
        BUSTAP 5344 2720 5344 2816
        BUSTAP 4608 2720 4608 2816
        BUSTAP 3920 2720 3920 2816
        BUSTAP 3184 2720 3184 2816
        BUSTAP 2480 2720 2480 2816
        BUSTAP 1776 2720 1776 2816
        BUSTAP 1072 2720 1072 2816
        INSTANCE XLXI_155 5584 3232 R0
        INSTANCE XLXI_156 4896 3232 R0
        INSTANCE XLXI_157 4144 3232 R0
        INSTANCE XLXI_158 3456 3232 R0
        INSTANCE XLXI_159 2720 3232 R0
        INSTANCE XLXI_160 2032 3232 R0
        INSTANCE XLXI_161 1296 3232 R0
        INSTANCE XLXI_162 608 3232 R0
        BUSTAP 5952 3392 5952 3488
        BUSTAP 5264 3392 5264 3488
        BUSTAP 4528 3392 4528 3488
        BUSTAP 3840 3392 3840 3488
        BUSTAP 3104 3392 3104 3488
        BUSTAP 2400 3392 2400 3488
        BUSTAP 1696 3392 1696 3488
        BUSTAP 992 3392 992 3488
        INSTANCE XLXI_163 5504 3904 R0
        INSTANCE XLXI_164 4816 3904 R0
        INSTANCE XLXI_165 4064 3904 R0
        INSTANCE XLXI_166 3376 3904 R0
        INSTANCE XLXI_167 2640 3904 R0
        INSTANCE XLXI_168 1952 3904 R0
        INSTANCE XLXI_169 1216 3904 R0
        INSTANCE XLXI_170 528 3904 R0
        BUSTAP 5936 4064 5936 4160
        BUSTAP 5248 4064 5248 4160
        BUSTAP 4512 4064 4512 4160
        BUSTAP 3824 4064 3824 4160
        BUSTAP 3088 4064 3088 4160
        BUSTAP 2384 4064 2384 4160
        BUSTAP 1680 4064 1680 4160
        BUSTAP 976 4064 976 4160
        INSTANCE XLXI_171 5488 4576 R0
        INSTANCE XLXI_172 4800 4576 R0
        INSTANCE XLXI_173 4048 4576 R0
        INSTANCE XLXI_174 3360 4576 R0
        INSTANCE XLXI_175 2624 4576 R0
        INSTANCE XLXI_176 1936 4576 R0
        INSTANCE XLXI_177 1200 4576 R0
        INSTANCE XLXI_178 512 4576 R0
        BUSTAP 5856 4736 5856 4832
        BUSTAP 5168 4736 5168 4832
        BUSTAP 4432 4736 4432 4832
        BUSTAP 3744 4736 3744 4832
        BUSTAP 3008 4736 3008 4832
        BUSTAP 2304 4736 2304 4832
        BUSTAP 1600 4736 1600 4832
        BUSTAP 896 4736 896 4832
        INSTANCE XLXI_179 5408 5248 R0
        INSTANCE XLXI_180 4720 5248 R0
        INSTANCE XLXI_181 3968 5248 R0
        INSTANCE XLXI_182 3280 5248 R0
        INSTANCE XLXI_183 2544 5248 R0
        INSTANCE XLXI_184 1856 5248 R0
        INSTANCE XLXI_185 1120 5248 R0
        INSTANCE XLXI_186 432 5248 R0
        BEGIN INSTANCE XLXI_1 6688 2240 R0
        END INSTANCE
        BEGIN BRANCH ADDR(0)
            WIRE 288 4864 288 5376
            WIRE 288 5376 976 5376
            WIRE 976 5376 1712 5376
            WIRE 1712 5376 2400 5376
            WIRE 2400 5376 3136 5376
            WIRE 3136 5376 3824 5376
            WIRE 3824 5376 4576 5376
            WIRE 4576 5376 5264 5376
            WIRE 288 4864 416 4864
            WIRE 416 4864 432 4864
            WIRE 368 4192 368 4704
            WIRE 368 4704 416 4704
            WIRE 416 4704 1056 4704
            WIRE 1056 4704 1792 4704
            WIRE 1792 4704 2480 4704
            WIRE 2480 4704 3216 4704
            WIRE 3216 4704 3904 4704
            WIRE 3904 4704 4656 4704
            WIRE 4656 4704 5344 4704
            WIRE 416 4704 416 4864
            WIRE 368 4192 464 4192
            WIRE 464 4192 512 4192
            WIRE 384 3520 384 4032
            WIRE 384 4032 464 4032
            WIRE 464 4032 1072 4032
            WIRE 1072 4032 1808 4032
            WIRE 1808 4032 2496 4032
            WIRE 2496 4032 3232 4032
            WIRE 3232 4032 3920 4032
            WIRE 3920 4032 4672 4032
            WIRE 4672 4032 5360 4032
            WIRE 464 4032 464 4192
            WIRE 384 3520 512 3520
            WIRE 512 3520 528 3520
            WIRE 464 2160 464 2672
            WIRE 464 2672 528 2672
            WIRE 528 2672 1152 2672
            WIRE 1152 2672 1888 2672
            WIRE 1888 2672 2576 2672
            WIRE 2576 2672 3312 2672
            WIRE 3312 2672 4000 2672
            WIRE 4000 2672 4752 2672
            WIRE 4752 2672 5440 2672
            WIRE 528 2672 528 2848
            WIRE 528 2848 608 2848
            WIRE 464 2160 544 2160
            WIRE 544 2160 608 2160
            WIRE 464 2848 464 3360
            WIRE 464 3360 512 3360
            WIRE 512 3360 1152 3360
            WIRE 1152 3360 1888 3360
            WIRE 1888 3360 2576 3360
            WIRE 2576 3360 3312 3360
            WIRE 3312 3360 4000 3360
            WIRE 4000 3360 4752 3360
            WIRE 4752 3360 5440 3360
            WIRE 512 3360 512 3520
            WIRE 464 2848 528 2848
            WIRE 544 1488 544 2000
            WIRE 544 2000 1232 2000
            WIRE 1232 2000 1968 2000
            WIRE 1968 2000 2656 2000
            WIRE 2656 2000 3392 2000
            WIRE 3392 2000 4080 2000
            WIRE 4080 2000 4832 2000
            WIRE 4832 2000 5520 2000
            WIRE 544 2000 544 2160
            WIRE 544 1488 560 1488
            WIRE 560 1488 688 1488
            WIRE 560 144 784 144
            WIRE 560 144 560 208
            WIRE 560 208 560 656
            WIRE 560 656 560 816
            WIRE 560 816 560 1328
            WIRE 560 1328 1248 1328
            WIRE 1248 1328 1984 1328
            WIRE 1984 1328 2672 1328
            WIRE 2672 1328 3408 1328
            WIRE 3408 1328 4096 1328
            WIRE 4096 1328 4848 1328
            WIRE 4848 1328 5536 1328
            WIRE 560 1328 560 1488
            WIRE 560 816 704 816
            WIRE 560 656 1328 656
            WIRE 1328 656 2064 656
            WIRE 2064 656 2752 656
            WIRE 2752 656 3488 656
            WIRE 3488 656 4176 656
            WIRE 4176 656 4928 656
            WIRE 4928 656 5616 656
            WIRE 5616 656 6256 656
            WIRE 976 4864 1120 4864
            WIRE 976 4864 976 5376
            WIRE 1056 4192 1200 4192
            WIRE 1056 4192 1056 4704
            WIRE 1072 3520 1216 3520
            WIRE 1072 3520 1072 4032
            WIRE 1152 2160 1296 2160
            WIRE 1152 2160 1152 2672
            WIRE 1152 2848 1296 2848
            WIRE 1152 2848 1152 3360
            WIRE 1232 1488 1376 1488
            WIRE 1232 1488 1232 2000
            WIRE 1248 816 1392 816
            WIRE 1248 816 1248 1328
            WIRE 1328 144 1472 144
            WIRE 1328 144 1328 656
            WIRE 1712 4864 1856 4864
            WIRE 1712 4864 1712 5376
            WIRE 1792 4192 1936 4192
            WIRE 1792 4192 1792 4704
            WIRE 1808 3520 1952 3520
            WIRE 1808 3520 1808 4032
            WIRE 1888 2160 2032 2160
            WIRE 1888 2160 1888 2672
            WIRE 1888 2848 2032 2848
            WIRE 1888 2848 1888 3360
            WIRE 1968 1488 2112 1488
            WIRE 1968 1488 1968 2000
            WIRE 1984 816 2128 816
            WIRE 1984 816 1984 1328
            WIRE 2064 144 2208 144
            WIRE 2064 144 2064 656
            WIRE 2400 4864 2544 4864
            WIRE 2400 4864 2400 5376
            WIRE 2480 4192 2624 4192
            WIRE 2480 4192 2480 4704
            WIRE 2496 3520 2640 3520
            WIRE 2496 3520 2496 4032
            WIRE 2576 2160 2720 2160
            WIRE 2576 2160 2576 2672
            WIRE 2576 2848 2720 2848
            WIRE 2576 2848 2576 3360
            WIRE 2656 1488 2800 1488
            WIRE 2656 1488 2656 2000
            WIRE 2672 816 2816 816
            WIRE 2672 816 2672 1328
            WIRE 2752 144 2896 144
            WIRE 2752 144 2752 656
            WIRE 3136 4864 3280 4864
            WIRE 3136 4864 3136 5376
            WIRE 3216 4192 3360 4192
            WIRE 3216 4192 3216 4704
            WIRE 3232 3520 3376 3520
            WIRE 3232 3520 3232 4032
            WIRE 3312 2160 3456 2160
            WIRE 3312 2160 3312 2672
            WIRE 3312 2848 3456 2848
            WIRE 3312 2848 3312 3360
            WIRE 3392 1488 3536 1488
            WIRE 3392 1488 3392 2000
            WIRE 3408 816 3552 816
            WIRE 3408 816 3408 1328
            WIRE 3488 144 3632 144
            WIRE 3488 144 3488 656
            WIRE 3824 4864 3968 4864
            WIRE 3824 4864 3824 5376
            WIRE 3904 4192 4048 4192
            WIRE 3904 4192 3904 4704
            WIRE 3920 3520 4064 3520
            WIRE 3920 3520 3920 4032
            WIRE 4000 2160 4144 2160
            WIRE 4000 2160 4000 2672
            WIRE 4000 2848 4144 2848
            WIRE 4000 2848 4000 3360
            WIRE 4080 1488 4224 1488
            WIRE 4080 1488 4080 2000
            WIRE 4096 816 4240 816
            WIRE 4096 816 4096 1328
            WIRE 4176 144 4320 144
            WIRE 4176 144 4176 656
            WIRE 4576 4864 4720 4864
            WIRE 4576 4864 4576 5376
            WIRE 4656 4192 4800 4192
            WIRE 4656 4192 4656 4704
            WIRE 4672 3520 4816 3520
            WIRE 4672 3520 4672 4032
            WIRE 4752 2160 4896 2160
            WIRE 4752 2160 4752 2672
            WIRE 4752 2848 4896 2848
            WIRE 4752 2848 4752 3360
            WIRE 4832 1488 4976 1488
            WIRE 4832 1488 4832 2000
            WIRE 4848 816 4992 816
            WIRE 4848 816 4848 1328
            WIRE 4928 144 5072 144
            WIRE 4928 144 4928 656
            WIRE 5264 4864 5408 4864
            WIRE 5264 4864 5264 5376
            WIRE 5344 4192 5488 4192
            WIRE 5344 4192 5344 4704
            WIRE 5360 3520 5504 3520
            WIRE 5360 3520 5360 4032
            WIRE 5440 2160 5584 2160
            WIRE 5440 2160 5440 2672
            WIRE 5440 2848 5584 2848
            WIRE 5440 2848 5440 3360
            WIRE 5520 1488 5664 1488
            WIRE 5520 1488 5520 2000
            WIRE 5536 816 5680 816
            WIRE 5536 816 5536 1328
            WIRE 5616 144 5760 144
            WIRE 5616 144 5616 656
            WIRE 6256 576 6256 656
            WIRE 6256 576 6704 576
            BEGIN DISPLAY 560 208 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(1)
            WIRE 304 4928 304 5360
            WIRE 304 5360 992 5360
            WIRE 992 5360 1728 5360
            WIRE 1728 5360 2416 5360
            WIRE 2416 5360 3152 5360
            WIRE 3152 5360 3840 5360
            WIRE 3840 5360 4592 5360
            WIRE 4592 5360 5280 5360
            WIRE 304 4928 384 4928
            WIRE 384 4928 432 4928
            WIRE 384 4256 384 4688
            WIRE 384 4688 1072 4688
            WIRE 1072 4688 1808 4688
            WIRE 1808 4688 2496 4688
            WIRE 2496 4688 3232 4688
            WIRE 3232 4688 3920 4688
            WIRE 3920 4688 4672 4688
            WIRE 4672 4688 5360 4688
            WIRE 384 4688 384 4928
            WIRE 384 4256 400 4256
            WIRE 400 4256 512 4256
            WIRE 400 3584 400 4016
            WIRE 400 4016 1088 4016
            WIRE 1088 4016 1824 4016
            WIRE 1824 4016 2512 4016
            WIRE 2512 4016 3248 4016
            WIRE 3248 4016 3936 4016
            WIRE 3936 4016 4688 4016
            WIRE 4688 4016 5376 4016
            WIRE 400 4016 400 4256
            WIRE 400 3584 480 3584
            WIRE 480 3584 528 3584
            WIRE 480 2224 480 2656
            WIRE 480 2656 1168 2656
            WIRE 1168 2656 1904 2656
            WIRE 1904 2656 2592 2656
            WIRE 2592 2656 3328 2656
            WIRE 3328 2656 4016 2656
            WIRE 4016 2656 4768 2656
            WIRE 4768 2656 5456 2656
            WIRE 480 2656 480 2912
            WIRE 480 2912 480 3344
            WIRE 480 3344 1168 3344
            WIRE 1168 3344 1904 3344
            WIRE 1904 3344 2592 3344
            WIRE 2592 3344 3328 3344
            WIRE 3328 3344 4016 3344
            WIRE 4016 3344 4768 3344
            WIRE 4768 3344 5456 3344
            WIRE 480 3344 480 3584
            WIRE 480 2912 608 2912
            WIRE 480 2224 560 2224
            WIRE 560 2224 608 2224
            WIRE 560 1552 560 1984
            WIRE 560 1984 1248 1984
            WIRE 1248 1984 1984 1984
            WIRE 1984 1984 2672 1984
            WIRE 2672 1984 3408 1984
            WIRE 3408 1984 4096 1984
            WIRE 4096 1984 4848 1984
            WIRE 4848 1984 5536 1984
            WIRE 560 1984 560 2224
            WIRE 560 1552 640 1552
            WIRE 640 1552 688 1552
            WIRE 576 880 576 1312
            WIRE 576 1312 640 1312
            WIRE 640 1312 1264 1312
            WIRE 1264 1312 2000 1312
            WIRE 2000 1312 2688 1312
            WIRE 2688 1312 3424 1312
            WIRE 3424 1312 4112 1312
            WIRE 4112 1312 4864 1312
            WIRE 4864 1312 5552 1312
            WIRE 640 1312 640 1552
            WIRE 576 880 656 880
            WIRE 656 880 704 880
            WIRE 656 208 784 208
            WIRE 656 208 656 240
            WIRE 656 240 656 640
            WIRE 656 640 1344 640
            WIRE 1344 640 2080 640
            WIRE 2080 640 2768 640
            WIRE 2768 640 3504 640
            WIRE 3504 640 4192 640
            WIRE 4192 640 4944 640
            WIRE 4944 640 5632 640
            WIRE 5632 640 6240 640
            WIRE 656 640 656 880
            WIRE 992 4928 1120 4928
            WIRE 992 4928 992 5360
            WIRE 1072 4256 1200 4256
            WIRE 1072 4256 1072 4688
            WIRE 1088 3584 1216 3584
            WIRE 1088 3584 1088 4016
            WIRE 1168 2224 1296 2224
            WIRE 1168 2224 1168 2656
            WIRE 1168 2912 1296 2912
            WIRE 1168 2912 1168 3344
            WIRE 1248 1552 1376 1552
            WIRE 1248 1552 1248 1984
            WIRE 1264 880 1392 880
            WIRE 1264 880 1264 1312
            WIRE 1344 208 1472 208
            WIRE 1344 208 1344 640
            WIRE 1728 4928 1856 4928
            WIRE 1728 4928 1728 5360
            WIRE 1808 4256 1936 4256
            WIRE 1808 4256 1808 4688
            WIRE 1824 3584 1952 3584
            WIRE 1824 3584 1824 4016
            WIRE 1904 2224 2032 2224
            WIRE 1904 2224 1904 2656
            WIRE 1904 2912 2032 2912
            WIRE 1904 2912 1904 3344
            WIRE 1984 1552 2112 1552
            WIRE 1984 1552 1984 1984
            WIRE 2000 880 2128 880
            WIRE 2000 880 2000 1312
            WIRE 2080 208 2208 208
            WIRE 2080 208 2080 640
            WIRE 2416 4928 2544 4928
            WIRE 2416 4928 2416 5360
            WIRE 2496 4256 2624 4256
            WIRE 2496 4256 2496 4688
            WIRE 2512 3584 2640 3584
            WIRE 2512 3584 2512 4016
            WIRE 2592 2224 2720 2224
            WIRE 2592 2224 2592 2656
            WIRE 2592 2912 2720 2912
            WIRE 2592 2912 2592 3344
            WIRE 2672 1552 2800 1552
            WIRE 2672 1552 2672 1984
            WIRE 2688 880 2816 880
            WIRE 2688 880 2688 1312
            WIRE 2768 208 2896 208
            WIRE 2768 208 2768 640
            WIRE 3152 4928 3280 4928
            WIRE 3152 4928 3152 5360
            WIRE 3232 4256 3360 4256
            WIRE 3232 4256 3232 4688
            WIRE 3248 3584 3376 3584
            WIRE 3248 3584 3248 4016
            WIRE 3328 2224 3456 2224
            WIRE 3328 2224 3328 2656
            WIRE 3328 2912 3456 2912
            WIRE 3328 2912 3328 3344
            WIRE 3408 1552 3536 1552
            WIRE 3408 1552 3408 1984
            WIRE 3424 880 3552 880
            WIRE 3424 880 3424 1312
            WIRE 3504 208 3632 208
            WIRE 3504 208 3504 640
            WIRE 3840 4928 3968 4928
            WIRE 3840 4928 3840 5360
            WIRE 3920 4256 4048 4256
            WIRE 3920 4256 3920 4688
            WIRE 3936 3584 4064 3584
            WIRE 3936 3584 3936 4016
            WIRE 4016 2224 4144 2224
            WIRE 4016 2224 4016 2656
            WIRE 4016 2912 4144 2912
            WIRE 4016 2912 4016 3344
            WIRE 4096 1552 4224 1552
            WIRE 4096 1552 4096 1984
            WIRE 4112 880 4240 880
            WIRE 4112 880 4112 1312
            WIRE 4192 208 4320 208
            WIRE 4192 208 4192 640
            WIRE 4592 4928 4720 4928
            WIRE 4592 4928 4592 5360
            WIRE 4672 4256 4800 4256
            WIRE 4672 4256 4672 4688
            WIRE 4688 3584 4816 3584
            WIRE 4688 3584 4688 4016
            WIRE 4768 2224 4896 2224
            WIRE 4768 2224 4768 2656
            WIRE 4768 2912 4896 2912
            WIRE 4768 2912 4768 3344
            WIRE 4848 1552 4976 1552
            WIRE 4848 1552 4848 1984
            WIRE 4864 880 4992 880
            WIRE 4864 880 4864 1312
            WIRE 4944 208 5072 208
            WIRE 4944 208 4944 640
            WIRE 5280 4928 5408 4928
            WIRE 5280 4928 5280 5360
            WIRE 5360 4256 5488 4256
            WIRE 5360 4256 5360 4688
            WIRE 5376 3584 5504 3584
            WIRE 5376 3584 5376 4016
            WIRE 5456 2224 5584 2224
            WIRE 5456 2224 5456 2656
            WIRE 5456 2912 5584 2912
            WIRE 5456 2912 5456 3344
            WIRE 5536 1552 5664 1552
            WIRE 5536 1552 5536 1984
            WIRE 5552 880 5680 880
            WIRE 5552 880 5552 1312
            WIRE 5632 208 5760 208
            WIRE 5632 208 5632 640
            WIRE 6240 528 6240 640
            WIRE 6240 528 6704 528
            BEGIN DISPLAY 656 240 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(2)
            WIRE 320 4656 320 4992
            WIRE 320 4992 320 5328
            WIRE 320 5328 1008 5328
            WIRE 1008 5328 1744 5328
            WIRE 1744 5328 2432 5328
            WIRE 2432 5328 3168 5328
            WIRE 3168 5328 3856 5328
            WIRE 3856 5328 4608 5328
            WIRE 4608 5328 5296 5328
            WIRE 320 4992 432 4992
            WIRE 320 4656 400 4656
            WIRE 400 4656 1088 4656
            WIRE 1088 4656 1824 4656
            WIRE 1824 4656 2512 4656
            WIRE 2512 4656 3248 4656
            WIRE 3248 4656 3936 4656
            WIRE 3936 4656 4688 4656
            WIRE 4688 4656 5376 4656
            WIRE 400 4320 400 4656
            WIRE 400 4320 416 4320
            WIRE 416 4320 512 4320
            WIRE 416 3312 416 3648
            WIRE 416 3648 416 3984
            WIRE 416 3984 1104 3984
            WIRE 1104 3984 1840 3984
            WIRE 1840 3984 2528 3984
            WIRE 2528 3984 3264 3984
            WIRE 3264 3984 3952 3984
            WIRE 3952 3984 4704 3984
            WIRE 4704 3984 5392 3984
            WIRE 416 3984 416 4320
            WIRE 416 3648 528 3648
            WIRE 416 3312 496 3312
            WIRE 496 3312 1184 3312
            WIRE 1184 3312 1920 3312
            WIRE 1920 3312 2608 3312
            WIRE 2608 3312 3344 3312
            WIRE 3344 3312 4032 3312
            WIRE 4032 3312 4784 3312
            WIRE 4784 3312 5472 3312
            WIRE 496 2288 496 2624
            WIRE 496 2624 576 2624
            WIRE 576 2624 1184 2624
            WIRE 1184 2624 1920 2624
            WIRE 1920 2624 2608 2624
            WIRE 2608 2624 3344 2624
            WIRE 3344 2624 4032 2624
            WIRE 4032 2624 4784 2624
            WIRE 4784 2624 5472 2624
            WIRE 576 2624 576 2976
            WIRE 576 2976 608 2976
            WIRE 496 2288 576 2288
            WIRE 576 2288 608 2288
            WIRE 496 2976 496 3312
            WIRE 496 2976 576 2976
            WIRE 576 1616 576 1952
            WIRE 576 1952 1264 1952
            WIRE 1264 1952 2000 1952
            WIRE 2000 1952 2688 1952
            WIRE 2688 1952 3424 1952
            WIRE 3424 1952 4112 1952
            WIRE 4112 1952 4864 1952
            WIRE 4864 1952 5552 1952
            WIRE 576 1952 576 2288
            WIRE 576 1616 672 1616
            WIRE 672 1616 688 1616
            WIRE 592 944 592 1280
            WIRE 592 1280 672 1280
            WIRE 672 1280 1280 1280
            WIRE 1280 1280 2016 1280
            WIRE 2016 1280 2704 1280
            WIRE 2704 1280 3440 1280
            WIRE 3440 1280 4128 1280
            WIRE 4128 1280 4880 1280
            WIRE 4880 1280 5568 1280
            WIRE 672 1280 672 1616
            WIRE 592 944 672 944
            WIRE 672 944 704 944
            WIRE 672 272 784 272
            WIRE 672 272 672 320
            WIRE 672 320 672 608
            WIRE 672 608 1360 608
            WIRE 1360 608 2096 608
            WIRE 2096 608 2784 608
            WIRE 2784 608 3520 608
            WIRE 3520 608 4208 608
            WIRE 4208 608 4960 608
            WIRE 4960 608 5648 608
            WIRE 5648 608 6224 608
            WIRE 672 608 672 944
            WIRE 1008 4992 1120 4992
            WIRE 1008 4992 1008 5328
            WIRE 1088 4320 1200 4320
            WIRE 1088 4320 1088 4656
            WIRE 1104 3648 1216 3648
            WIRE 1104 3648 1104 3984
            WIRE 1184 2288 1296 2288
            WIRE 1184 2288 1184 2624
            WIRE 1184 2976 1296 2976
            WIRE 1184 2976 1184 3312
            WIRE 1264 1616 1376 1616
            WIRE 1264 1616 1264 1952
            WIRE 1280 944 1392 944
            WIRE 1280 944 1280 1280
            WIRE 1360 272 1472 272
            WIRE 1360 272 1360 608
            WIRE 1744 4992 1856 4992
            WIRE 1744 4992 1744 5328
            WIRE 1824 4320 1936 4320
            WIRE 1824 4320 1824 4656
            WIRE 1840 3648 1952 3648
            WIRE 1840 3648 1840 3984
            WIRE 1920 2288 2032 2288
            WIRE 1920 2288 1920 2624
            WIRE 1920 2976 2032 2976
            WIRE 1920 2976 1920 3312
            WIRE 2000 1616 2112 1616
            WIRE 2000 1616 2000 1952
            WIRE 2016 944 2128 944
            WIRE 2016 944 2016 1280
            WIRE 2096 272 2208 272
            WIRE 2096 272 2096 608
            WIRE 2432 4992 2544 4992
            WIRE 2432 4992 2432 5328
            WIRE 2512 4320 2624 4320
            WIRE 2512 4320 2512 4656
            WIRE 2528 3648 2640 3648
            WIRE 2528 3648 2528 3984
            WIRE 2608 2288 2720 2288
            WIRE 2608 2288 2608 2624
            WIRE 2608 2976 2720 2976
            WIRE 2608 2976 2608 3312
            WIRE 2688 1616 2800 1616
            WIRE 2688 1616 2688 1952
            WIRE 2704 944 2816 944
            WIRE 2704 944 2704 1280
            WIRE 2784 272 2896 272
            WIRE 2784 272 2784 608
            WIRE 3168 4992 3280 4992
            WIRE 3168 4992 3168 5328
            WIRE 3248 4320 3360 4320
            WIRE 3248 4320 3248 4656
            WIRE 3264 3648 3376 3648
            WIRE 3264 3648 3264 3984
            WIRE 3344 2288 3456 2288
            WIRE 3344 2288 3344 2624
            WIRE 3344 2976 3456 2976
            WIRE 3344 2976 3344 3312
            WIRE 3424 1616 3536 1616
            WIRE 3424 1616 3424 1952
            WIRE 3440 944 3552 944
            WIRE 3440 944 3440 1280
            WIRE 3520 272 3632 272
            WIRE 3520 272 3520 608
            WIRE 3856 4992 3968 4992
            WIRE 3856 4992 3856 5328
            WIRE 3936 4320 4048 4320
            WIRE 3936 4320 3936 4656
            WIRE 3952 3648 4064 3648
            WIRE 3952 3648 3952 3984
            WIRE 4032 2288 4144 2288
            WIRE 4032 2288 4032 2624
            WIRE 4032 2976 4144 2976
            WIRE 4032 2976 4032 3312
            WIRE 4112 1616 4224 1616
            WIRE 4112 1616 4112 1952
            WIRE 4128 944 4240 944
            WIRE 4128 944 4128 1280
            WIRE 4208 272 4320 272
            WIRE 4208 272 4208 608
            WIRE 4608 4992 4720 4992
            WIRE 4608 4992 4608 5328
            WIRE 4688 4320 4800 4320
            WIRE 4688 4320 4688 4656
            WIRE 4704 3648 4816 3648
            WIRE 4704 3648 4704 3984
            WIRE 4784 2288 4896 2288
            WIRE 4784 2288 4784 2624
            WIRE 4784 2976 4896 2976
            WIRE 4784 2976 4784 3312
            WIRE 4864 1616 4976 1616
            WIRE 4864 1616 4864 1952
            WIRE 4880 944 4992 944
            WIRE 4880 944 4880 1280
            WIRE 4960 272 5072 272
            WIRE 4960 272 4960 608
            WIRE 5296 4992 5408 4992
            WIRE 5296 4992 5296 5328
            WIRE 5376 4320 5488 4320
            WIRE 5376 4320 5376 4656
            WIRE 5392 3648 5504 3648
            WIRE 5392 3648 5392 3984
            WIRE 5472 2288 5584 2288
            WIRE 5472 2288 5472 2624
            WIRE 5472 2976 5584 2976
            WIRE 5472 2976 5472 3312
            WIRE 5552 1616 5664 1616
            WIRE 5552 1616 5552 1952
            WIRE 5568 944 5680 944
            WIRE 5568 944 5568 1280
            WIRE 5648 272 5760 272
            WIRE 5648 272 5648 608
            WIRE 6224 480 6224 608
            WIRE 6224 480 6704 480
            BEGIN DISPLAY 672 320 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(4)
            WIRE 240 1072 240 1408
            WIRE 240 1408 240 1744
            WIRE 240 1744 608 1744
            WIRE 608 1744 608 1888
            WIRE 608 1888 1296 1888
            WIRE 1296 1888 2032 1888
            WIRE 2032 1888 2720 1888
            WIRE 2720 1888 3456 1888
            WIRE 3456 1888 4144 1888
            WIRE 4144 1888 4896 1888
            WIRE 4896 1888 5584 1888
            WIRE 608 1744 688 1744
            WIRE 240 1744 240 2416
            WIRE 240 2416 528 2416
            WIRE 528 2416 528 2560
            WIRE 528 2560 1216 2560
            WIRE 1216 2560 1952 2560
            WIRE 1952 2560 2640 2560
            WIRE 2640 2560 3376 2560
            WIRE 3376 2560 4064 2560
            WIRE 4064 2560 4816 2560
            WIRE 4816 2560 5504 2560
            WIRE 528 2416 608 2416
            WIRE 240 2416 240 3104
            WIRE 240 3104 528 3104
            WIRE 528 3104 528 3248
            WIRE 528 3248 1216 3248
            WIRE 1216 3248 1952 3248
            WIRE 1952 3248 2640 3248
            WIRE 2640 3248 3376 3248
            WIRE 3376 3248 4064 3248
            WIRE 4064 3248 4816 3248
            WIRE 4816 3248 5504 3248
            WIRE 528 3104 608 3104
            WIRE 240 3104 240 3776
            WIRE 240 3776 448 3776
            WIRE 448 3776 448 3920
            WIRE 448 3920 1136 3920
            WIRE 1136 3920 1872 3920
            WIRE 1872 3920 2560 3920
            WIRE 2560 3920 3296 3920
            WIRE 3296 3920 3984 3920
            WIRE 3984 3920 4736 3920
            WIRE 4736 3920 5424 3920
            WIRE 448 3776 528 3776
            WIRE 240 3776 240 4448
            WIRE 240 4448 432 4448
            WIRE 432 4448 432 4592
            WIRE 432 4592 1120 4592
            WIRE 1120 4592 1856 4592
            WIRE 1856 4592 2544 4592
            WIRE 2544 4592 3280 4592
            WIRE 3280 4592 3968 4592
            WIRE 3968 4592 4720 4592
            WIRE 4720 4592 5408 4592
            WIRE 432 4448 512 4448
            WIRE 240 4448 240 5120
            WIRE 240 5120 352 5120
            WIRE 352 5120 352 5264
            WIRE 352 5264 1040 5264
            WIRE 1040 5264 1776 5264
            WIRE 1776 5264 2464 5264
            WIRE 2464 5264 3200 5264
            WIRE 3200 5264 3888 5264
            WIRE 3888 5264 4640 5264
            WIRE 4640 5264 5328 5264
            WIRE 352 5120 432 5120
            WIRE 240 1072 480 1072
            WIRE 480 1072 624 1072
            WIRE 624 1072 624 1216
            WIRE 624 1216 1312 1216
            WIRE 1312 1216 2048 1216
            WIRE 2048 1216 2736 1216
            WIRE 2736 1216 3472 1216
            WIRE 3472 1216 4160 1216
            WIRE 4160 1216 4912 1216
            WIRE 4912 1216 5600 1216
            WIRE 624 1072 704 1072
            WIRE 480 400 704 400
            WIRE 704 400 784 400
            WIRE 704 400 704 528
            WIRE 704 528 704 544
            WIRE 704 544 1392 544
            WIRE 1392 544 2128 544
            WIRE 2128 544 2816 544
            WIRE 2816 544 3552 544
            WIRE 3552 544 4240 544
            WIRE 4240 544 4992 544
            WIRE 4992 544 5680 544
            WIRE 5680 544 6192 544
            WIRE 480 400 480 1072
            WIRE 1040 5120 1120 5120
            WIRE 1040 5120 1040 5264
            WIRE 1120 4448 1200 4448
            WIRE 1120 4448 1120 4592
            WIRE 1136 3776 1216 3776
            WIRE 1136 3776 1136 3920
            WIRE 1216 2416 1296 2416
            WIRE 1216 2416 1216 2560
            WIRE 1216 3104 1296 3104
            WIRE 1216 3104 1216 3248
            WIRE 1296 1744 1376 1744
            WIRE 1296 1744 1296 1888
            WIRE 1312 1072 1392 1072
            WIRE 1312 1072 1312 1216
            WIRE 1392 400 1472 400
            WIRE 1392 400 1392 544
            WIRE 1776 5120 1856 5120
            WIRE 1776 5120 1776 5264
            WIRE 1856 4448 1936 4448
            WIRE 1856 4448 1856 4592
            WIRE 1872 3776 1952 3776
            WIRE 1872 3776 1872 3920
            WIRE 1952 2416 2032 2416
            WIRE 1952 2416 1952 2560
            WIRE 1952 3104 2032 3104
            WIRE 1952 3104 1952 3248
            WIRE 2032 1744 2112 1744
            WIRE 2032 1744 2032 1888
            WIRE 2048 1072 2128 1072
            WIRE 2048 1072 2048 1216
            WIRE 2128 400 2208 400
            WIRE 2128 400 2128 544
            WIRE 2464 5120 2544 5120
            WIRE 2464 5120 2464 5264
            WIRE 2544 4448 2624 4448
            WIRE 2544 4448 2544 4592
            WIRE 2560 3776 2640 3776
            WIRE 2560 3776 2560 3920
            WIRE 2640 2416 2720 2416
            WIRE 2640 2416 2640 2560
            WIRE 2640 3104 2720 3104
            WIRE 2640 3104 2640 3248
            WIRE 2720 1744 2800 1744
            WIRE 2720 1744 2720 1888
            WIRE 2736 1072 2816 1072
            WIRE 2736 1072 2736 1216
            WIRE 2816 400 2896 400
            WIRE 2816 400 2816 544
            WIRE 3200 5120 3280 5120
            WIRE 3200 5120 3200 5264
            WIRE 3280 4448 3360 4448
            WIRE 3280 4448 3280 4592
            WIRE 3296 3776 3376 3776
            WIRE 3296 3776 3296 3920
            WIRE 3376 2416 3456 2416
            WIRE 3376 2416 3376 2560
            WIRE 3376 3104 3456 3104
            WIRE 3376 3104 3376 3248
            WIRE 3456 1744 3536 1744
            WIRE 3456 1744 3456 1888
            WIRE 3472 1072 3552 1072
            WIRE 3472 1072 3472 1216
            WIRE 3552 400 3632 400
            WIRE 3552 400 3552 544
            WIRE 3888 5120 3968 5120
            WIRE 3888 5120 3888 5264
            WIRE 3968 4448 4048 4448
            WIRE 3968 4448 3968 4592
            WIRE 3984 3776 4064 3776
            WIRE 3984 3776 3984 3920
            WIRE 4064 2416 4144 2416
            WIRE 4064 2416 4064 2560
            WIRE 4064 3104 4144 3104
            WIRE 4064 3104 4064 3248
            WIRE 4144 1744 4224 1744
            WIRE 4144 1744 4144 1888
            WIRE 4160 1072 4240 1072
            WIRE 4160 1072 4160 1216
            WIRE 4240 400 4320 400
            WIRE 4240 400 4240 544
            WIRE 4640 5120 4720 5120
            WIRE 4640 5120 4640 5264
            WIRE 4720 4448 4800 4448
            WIRE 4720 4448 4720 4592
            WIRE 4736 3776 4816 3776
            WIRE 4736 3776 4736 3920
            WIRE 4816 2416 4896 2416
            WIRE 4816 2416 4816 2560
            WIRE 4816 3104 4896 3104
            WIRE 4816 3104 4816 3248
            WIRE 4896 1744 4976 1744
            WIRE 4896 1744 4896 1888
            WIRE 4912 1072 4992 1072
            WIRE 4912 1072 4912 1216
            WIRE 4992 400 5072 400
            WIRE 4992 400 4992 544
            WIRE 5328 5120 5408 5120
            WIRE 5328 5120 5328 5264
            WIRE 5408 4448 5488 4448
            WIRE 5408 4448 5408 4592
            WIRE 5424 3776 5504 3776
            WIRE 5424 3776 5424 3920
            WIRE 5504 2416 5584 2416
            WIRE 5504 2416 5504 2560
            WIRE 5504 3104 5584 3104
            WIRE 5504 3104 5504 3248
            WIRE 5584 1744 5664 1744
            WIRE 5584 1744 5584 1888
            WIRE 5600 1072 5680 1072
            WIRE 5600 1072 5600 1216
            WIRE 5680 400 5760 400
            WIRE 5680 400 5680 544
            WIRE 6192 384 6192 544
            WIRE 6192 384 6704 384
            BEGIN DISPLAY 240 1408 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
            BEGIN DISPLAY 704 528 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(3)
            WIRE 224 1008 224 1680
            WIRE 224 1680 592 1680
            WIRE 592 1680 592 1920
            WIRE 592 1920 1280 1920
            WIRE 1280 1920 2016 1920
            WIRE 2016 1920 2704 1920
            WIRE 2704 1920 3440 1920
            WIRE 3440 1920 4128 1920
            WIRE 4128 1920 4880 1920
            WIRE 4880 1920 5568 1920
            WIRE 592 1680 688 1680
            WIRE 224 1680 224 2352
            WIRE 224 2352 512 2352
            WIRE 512 2352 512 2592
            WIRE 512 2592 1200 2592
            WIRE 1200 2592 1936 2592
            WIRE 1936 2592 2624 2592
            WIRE 2624 2592 3360 2592
            WIRE 3360 2592 4048 2592
            WIRE 4048 2592 4800 2592
            WIRE 4800 2592 5488 2592
            WIRE 512 2352 608 2352
            WIRE 224 2352 224 3024
            WIRE 224 3024 512 3024
            WIRE 512 3024 512 3040
            WIRE 512 3040 608 3040
            WIRE 512 3040 512 3280
            WIRE 512 3280 1200 3280
            WIRE 1200 3280 1936 3280
            WIRE 1936 3280 2624 3280
            WIRE 2624 3280 3360 3280
            WIRE 3360 3280 4048 3280
            WIRE 4048 3280 4800 3280
            WIRE 4800 3280 5488 3280
            WIRE 224 3024 224 3712
            WIRE 224 3712 432 3712
            WIRE 432 3712 432 3952
            WIRE 432 3952 1120 3952
            WIRE 1120 3952 1856 3952
            WIRE 1856 3952 2544 3952
            WIRE 2544 3952 3280 3952
            WIRE 3280 3952 3968 3952
            WIRE 3968 3952 4720 3952
            WIRE 4720 3952 5408 3952
            WIRE 432 3712 528 3712
            WIRE 224 3712 224 4384
            WIRE 224 4384 416 4384
            WIRE 416 4384 416 4624
            WIRE 416 4624 1104 4624
            WIRE 1104 4624 1840 4624
            WIRE 1840 4624 2528 4624
            WIRE 2528 4624 3264 4624
            WIRE 3264 4624 3952 4624
            WIRE 3952 4624 4704 4624
            WIRE 4704 4624 5392 4624
            WIRE 416 4384 512 4384
            WIRE 224 4384 224 5056
            WIRE 224 5056 336 5056
            WIRE 336 5056 336 5296
            WIRE 336 5296 1024 5296
            WIRE 1024 5296 1760 5296
            WIRE 1760 5296 2448 5296
            WIRE 2448 5296 3184 5296
            WIRE 3184 5296 3872 5296
            WIRE 3872 5296 4624 5296
            WIRE 4624 5296 5312 5296
            WIRE 336 5056 432 5056
            WIRE 224 1008 352 1008
            WIRE 352 1008 608 1008
            WIRE 608 1008 608 1248
            WIRE 608 1248 1296 1248
            WIRE 1296 1248 2032 1248
            WIRE 2032 1248 2720 1248
            WIRE 2720 1248 3456 1248
            WIRE 3456 1248 4144 1248
            WIRE 4144 1248 4896 1248
            WIRE 4896 1248 5584 1248
            WIRE 608 1008 704 1008
            WIRE 352 336 688 336
            WIRE 688 336 784 336
            WIRE 688 336 688 432
            WIRE 688 432 688 576
            WIRE 688 576 1376 576
            WIRE 1376 576 2112 576
            WIRE 2112 576 2800 576
            WIRE 2800 576 3536 576
            WIRE 3536 576 4224 576
            WIRE 4224 576 4976 576
            WIRE 4976 576 5664 576
            WIRE 5664 576 6208 576
            WIRE 352 336 352 1008
            WIRE 1024 5056 1120 5056
            WIRE 1024 5056 1024 5296
            WIRE 1104 4384 1200 4384
            WIRE 1104 4384 1104 4624
            WIRE 1120 3712 1216 3712
            WIRE 1120 3712 1120 3952
            WIRE 1200 2352 1296 2352
            WIRE 1200 2352 1200 2592
            WIRE 1200 3040 1296 3040
            WIRE 1200 3040 1200 3280
            WIRE 1280 1680 1376 1680
            WIRE 1280 1680 1280 1920
            WIRE 1296 1008 1392 1008
            WIRE 1296 1008 1296 1248
            WIRE 1376 336 1472 336
            WIRE 1376 336 1376 576
            WIRE 1760 5056 1856 5056
            WIRE 1760 5056 1760 5296
            WIRE 1840 4384 1936 4384
            WIRE 1840 4384 1840 4624
            WIRE 1856 3712 1952 3712
            WIRE 1856 3712 1856 3952
            WIRE 1936 2352 2032 2352
            WIRE 1936 2352 1936 2592
            WIRE 1936 3040 2032 3040
            WIRE 1936 3040 1936 3280
            WIRE 2016 1680 2112 1680
            WIRE 2016 1680 2016 1920
            WIRE 2032 1008 2128 1008
            WIRE 2032 1008 2032 1248
            WIRE 2112 336 2208 336
            WIRE 2112 336 2112 576
            WIRE 2448 5056 2544 5056
            WIRE 2448 5056 2448 5296
            WIRE 2528 4384 2624 4384
            WIRE 2528 4384 2528 4624
            WIRE 2544 3712 2640 3712
            WIRE 2544 3712 2544 3952
            WIRE 2624 2352 2720 2352
            WIRE 2624 2352 2624 2592
            WIRE 2624 3040 2720 3040
            WIRE 2624 3040 2624 3280
            WIRE 2704 1680 2800 1680
            WIRE 2704 1680 2704 1920
            WIRE 2720 1008 2816 1008
            WIRE 2720 1008 2720 1248
            WIRE 2800 336 2896 336
            WIRE 2800 336 2800 576
            WIRE 3184 5056 3280 5056
            WIRE 3184 5056 3184 5296
            WIRE 3264 4384 3360 4384
            WIRE 3264 4384 3264 4624
            WIRE 3280 3712 3376 3712
            WIRE 3280 3712 3280 3952
            WIRE 3360 2352 3456 2352
            WIRE 3360 2352 3360 2592
            WIRE 3360 3040 3456 3040
            WIRE 3360 3040 3360 3280
            WIRE 3440 1680 3536 1680
            WIRE 3440 1680 3440 1920
            WIRE 3456 1008 3552 1008
            WIRE 3456 1008 3456 1248
            WIRE 3536 336 3632 336
            WIRE 3536 336 3536 576
            WIRE 3872 5056 3968 5056
            WIRE 3872 5056 3872 5296
            WIRE 3952 4384 4048 4384
            WIRE 3952 4384 3952 4624
            WIRE 3968 3712 4064 3712
            WIRE 3968 3712 3968 3952
            WIRE 4048 2352 4144 2352
            WIRE 4048 2352 4048 2592
            WIRE 4048 3040 4144 3040
            WIRE 4048 3040 4048 3280
            WIRE 4128 1680 4224 1680
            WIRE 4128 1680 4128 1920
            WIRE 4144 1008 4240 1008
            WIRE 4144 1008 4144 1248
            WIRE 4224 336 4320 336
            WIRE 4224 336 4224 576
            WIRE 4624 5056 4720 5056
            WIRE 4624 5056 4624 5296
            WIRE 4704 4384 4800 4384
            WIRE 4704 4384 4704 4624
            WIRE 4720 3712 4816 3712
            WIRE 4720 3712 4720 3952
            WIRE 4800 2352 4896 2352
            WIRE 4800 2352 4800 2592
            WIRE 4800 3040 4896 3040
            WIRE 4800 3040 4800 3280
            WIRE 4880 1680 4976 1680
            WIRE 4880 1680 4880 1920
            WIRE 4896 1008 4992 1008
            WIRE 4896 1008 4896 1248
            WIRE 4976 336 5072 336
            WIRE 4976 336 4976 576
            WIRE 5312 5056 5408 5056
            WIRE 5312 5056 5312 5296
            WIRE 5392 4384 5488 4384
            WIRE 5392 4384 5392 4624
            WIRE 5408 3712 5504 3712
            WIRE 5408 3712 5408 3952
            WIRE 5488 2352 5584 2352
            WIRE 5488 2352 5488 2592
            WIRE 5488 3040 5584 3040
            WIRE 5488 3040 5488 3280
            WIRE 5568 1680 5664 1680
            WIRE 5568 1680 5568 1920
            WIRE 5584 1008 5680 1008
            WIRE 5584 1008 5584 1248
            WIRE 5664 336 5760 336
            WIRE 5664 336 5664 576
            WIRE 6208 432 6208 576
            WIRE 6208 432 6704 432
            BEGIN DISPLAY 688 432 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(7:0)
            WIRE 6800 256 6800 288
            WIRE 6800 288 6800 384
            WIRE 6800 384 6800 432
            WIRE 6800 432 6800 480
            WIRE 6800 480 6800 528
            WIRE 6800 528 6800 576
            WIRE 6800 576 6800 800
            WIRE 6800 800 6816 800
            WIRE 6816 800 6880 800
            WIRE 6880 800 6944 800
            BEGIN DISPLAY 6800 288 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 6800 432 6704 432
        BUSTAP 6800 480 6704 480
        BUSTAP 6800 528 6704 528
        BUSTAP 6800 576 6704 576
        BUSTAP 6800 384 6704 384
        IOMARKER 6800 256 ADDR(7:0) R270 28
        BUSTAP 6816 800 6816 896
        BUSTAP 6880 800 6880 896
        BUSTAP 6944 800 6944 896
        BEGIN BRANCH DATA_OUT(7:0)
            WIRE 7072 1568 7200 1568
            WIRE 7200 1568 7456 1568
            BEGIN DISPLAY 7200 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 7456 1568 DATA_OUT(7:0) R0 28
        BEGIN BRANCH ADDR(7)
            WIRE 6512 976 6512 1696
            WIRE 6512 1696 6688 1696
            WIRE 6512 976 6656 976
            WIRE 6656 976 6816 976
            WIRE 6816 896 6816 976
            BEGIN DISPLAY 6656 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(6)
            WIRE 6560 1024 6560 1632
            WIRE 6560 1632 6688 1632
            WIRE 6560 1024 6656 1024
            WIRE 6656 1024 6880 1024
            WIRE 6880 896 6880 1024
            BEGIN DISPLAY 6656 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADDR(5)
            WIRE 6624 1088 6624 1568
            WIRE 6624 1568 6688 1568
            WIRE 6624 1088 6688 1088
            WIRE 6688 1088 6944 1088
            WIRE 6944 896 6944 1088
            BEGIN DISPLAY 6688 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
