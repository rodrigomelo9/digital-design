<!-- .slide: data-background="#145A32" -->

## Advanced Microcontroller Bus Architecture (AMBA)

[rodrigomelo9.github.io/digital-design](https://rodrigomelo9.github.io/digital-design/)

Rodrigo Alejandro Melo

[Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/)

---

### AMBA Specs

AMBA       | AMBA2       | AMBA3           | AMBA4                             | AMBA5
:---:      |:---:        |:---:            |:---:                              |:---:
No         | No          | AXI3 (2003/4)   | AXI4 AXI4-Lite AXI4-Stream (2010) | AXI5 AXI5-Lite AXI5-Stream (2017/21)
No         | AHB (1999)  | AHB-Lite (2006) | No                                | AHB5 AHB5-Lite (2015/21)
ASB (1996) | ASB (1996)  | No              | No                                | No
APB (1996) | APB2 (1999) | APB3 (2003/4)   | APB4                       (2010) | APB5 (2021)
<!-- .element: style="font-size: 0.5em !important;" -->

> **WARNING:** the first APB and ASB are obsolete (shouldn't be used in new designs)
<!-- .element: style="font-size: 0.5em !important;" -->

Advanced eXtensible Interface                | Advanced High-performance Bus    | Advanced System Bus | Advanced Peripherals Bus
---                                          |---                               |---                  | ---
Full: Higher performance system bus          | AHB: High Performance system bus | System bus          | Low bandwidth peripherals
Lite: Control/Status registers               | AHB-Lite: for single masters     |                     | Control/Status registers
Stream: high speeds unidirectional transfers |                                  |                     |
<!-- .element: style="font-size: 0.35em !important;" -->

---

### APB

Source | APB2         | APB3         | APB4           | APB5              | Comment
---    |---           |---           |---             |---                |---
Clock  | PCLK         | PCLK         | PCLK           | PCLK              |
Reset  | PRESETn      | PRESETn      | PRESETn        | PRESETn           |
M      | PADDR[A-1:0] | PADDR[A-1:0] | PADDR[A-1:0]   | PADDR[A-1:0]      | Address (A is up to 32 bits)
Dec    | PSELx        | PSELx        | PSELx          | PSELx             | S selected
Dec    | PENABLE      | PENABLE      | PENABLE        | PENABLE           | S enabled
M      | PWRITE       | PWRITE       | PWRITE         | PWRITE            | Write operation
M      | PWDATA[D-1]  | PWDATA[D-1]  | PWDATA[D-1]    | PWDATA[D-1]       | Write Data. (D is 8, 16 or 32 bits)
S      | PRDATA[D-1]  | PRDATA[D-1]  | PRDATA[D-1]    | PRDATA[D-1]       | Read Data (D is 8, 16 or 32 bits)
S      |              | PREADY       | PREADY         | PREADY            | Indicates the completion of a transfer
S      |              | PSLVERR      | PSLVERR        | PSLVERR           | Indicates an error condition
M      |              |              | PPROT[2:0]     | PPROT[2:0]        | Normal, privileged, or secure protection level
M      |              |              | PSTRB[D/8-1:0] | PSTRB[D/8-1:0]    | Write Strobe: bytes to update during a write
<!-- .element: style="font-size: 0.4em !important;" -->

----

### APB5 additions

Source | APB5              | Comment
---    |---                |---
M      | PWAKEUP           | Wake-up
M      | PAUSER[up-to-128] | User request attribute
M      | PWUSER[up-to-D/2] | User write data attribute
S      | PRUSER[up-to-D/2] | User read data attribute
S      | PBUSER[up-to-16]  | User response attribute
Source | P*CHK             | Parity (for safety)
<!-- .element: style="font-size: 0.5em !important;" -->

---

### AHB

Source | AHB2          | AHB-Lite     | AHB5          | Comment
---    |---            |---           |---            |---
Clock  | HCLK          | HCLK         | HCLK          |
Reset  | HRESETn       | HRESETn      | HRESETn       |
M      | HADDR[31:0]   | HADDR[31:0]  | HADDR[31:0]   | Address (32-bits, between 10 and 64 in AHB5)
Dec    | HSELx         | HSELx        | HSELx         | S selected
M      | HTRANS[1:0]   | HTRANS[1:0]  | HTRANS[1:0]   | Transfer type: IDLE, BUSY, NONSEQ, SEQ
M      | HWRITE        | HWRITE       | HWRITE        | Write operation
M      | HSIZE[2:0]    | HSIZE[2:0]   | HSIZE[2:0]    | Size of the transfer (2^SIZE bytes)
M      | HBURST[2:0]   | HBURST[2:0]  | HBURST[2:0]   | Burst length and address increments
M      | HPROT[3:0]    | HPROT[3:0]   | HPROT[2:0]    | Normal, privileged, or secure protection level
M      | HWDATA[31:0]  | HWDATA[31:0] | HWDATA[]      | WR D: 8, 16, 32, 64, 128, 256, 512, 1024 (bits)
S      | HRDATA[31:0]  | HRDATA[31:0] | HRDATA[]      | RD D: 8, 16, 32, 64, 128, 256, 512, 1024 (bits)
M      |               |              | HWSTRB[D/8-1] | Write Strobe: bytes to update during a write
S/Dec  | HREADY        | HREADY       | HREADY        | Indicates that the previous transfer is complete
S      | HRESP[1:0]    | HRESP        | HRESP         | Transfer response
M      | HBUSREQx      |              |               | Bus required
M      | HLOCKx        |              |               | Locked access required
Dec    | HGRANTx       |              |               | Locked access has the highest priority
Dec    | HMASTER[3:0]  |              | HMASTER[7:0]  | Manager identifier
Dec/M  | HMASTLOCK     | HMASTLOCK    | HMASTLOCK     | Current transfer is part of a locked sequence
S      | HSPLITx[15:0] |              |               | M to re-attempt a split transaction
S      |               | HREADYOUT    | HREADYOUT     | A transfer has finished
<!-- .element: style="font-size: 0.35em !important;" -->

----

### AHB5 additions

Source | AHB5              | Comment
---    |---                |---
M      | HNONSEC           | Indicates Non-secure transaction
M      | HEXCL             | Exclusive Access
S      | HEXOKAY           | Exclusive Okay
M      | HAUSER[up-to-128] | User-defined request attribute
M      | HWUSER[up-to-D/2] | User-defined write data attribute
S      | HRUSER[up-to-D/2] | User-defined read data attribute
S      | HBUSER[up-to-16]  | User-defined response attribute
Source | H*CHK             | Parity (for safety)
Source | HCTRLCHK1         | Parity (for safety)
Source | HCTRLCHK2         | Parity (for safety)
<!-- .element: style="font-size: 0.5em !important;" -->

---

## AXI

---
<!-- ###################################################################### -->
# Questions?
<!-- .slide: data-background="#1F618D" -->
<!-- ###################################################################### -->

|   |   |
|---|---|
| ![GitHub icon](images/icons/github.png) | [rodrigomelo9](https://github.com/rodrigomelo9) |
| ![Twitter icon](images/icons/twitter.png) | [rodrigomelo9ok](https://twitter.com/rodrigomelo9ok) |
| ![LinkedIn icon](images/icons/linkedin.png) | [rodrigoalejandromelo](https://www.linkedin.com/in/rodrigoalejandromelo/) |
|   |   |
