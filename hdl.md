<!-- .slide: data-background="#145A32" -->

# HDL Introduction

[rodrigomelo9.github.io/digital-design](https://rodrigomelo9.github.io/digital-design/)

Rodrigo Alejandro Melo

[Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/)

---

### Hardware Description Languages

----

#### VHDL

* **V**ery **H**igh **S**peed **I**ntegrated **C**ircuit + **HDL**
* U.S. Department of Defense (1983)
* Standard IEEE 1076 (87, **93**, 00, 02, 08, 19)

----

#### Verilog

* **VERI**fication + **LOG**ic
* Gateway Design Automation (1984), Cadence (1990)
* Standard IEEE 1364 (95, **01**, 05)
* Verilog is now part of System Verilog (IEEE 1800)

----

#### VHDL vs Verilog

* VHDL is strongly typed, CasE InSEnSiTiVe and supports libraries. Based on ADA.
* Verilog is weakly typed, case sensitive and doesn’t support libraries. C-like syntax
* You can achieve the same with both of them.
* Verilog is more concise but allows you to write wrong code.

----

#### EDA tools support

The most widely supported standards are VHDL 93 and Verilog 2001.

![Xcell27](images/hdl/xcell27.png)

**Source:** Xcell Journal, issue 27 (1998)

---

### Trends

----

#### Google Trends

![Google Trends](images/hdl/trends.png)

**Source:** [VHDL vs Verilog (last 5 years)](https://trends.google.com/trends/explore?date=today%205-y&q=VHDL,Verilog) [Oct 2, 2021]

----

#### FPGA Design Languages

![FPGA design languages](images/hdl/wrg-fpga-design-languages.png)

**Source:** [The 2020 Wilson Research Group Functional Verification Study](https://blogs.sw.siemens.com/verificationhorizons/2020/12/16/part-6-the-2020-wilson-research-group-functional-verification-study/) (SIEMENS)

----

#### FPGA Verification Languages

![FPGA verification languages](images/hdl/wrg-fpga-verif-languages.png)

**Source:** [The 2020 Wilson Research Group Functional Verification Study](https://blogs.sw.siemens.com/verificationhorizons/2020/12/16/part-6-the-2020-wilson-research-group-functional-verification-study/) (SIEMENS)

----

#### ASIC Design Languages

![ASIC design languages](images/hdl/wrg-asic-design-languages.png)

**Source:** [The 2020 Wilson Research Group Functional Verification Study](https://blogs.sw.siemens.com/verificationhorizons/2021/01/20/part-10-the-2020-wilson-research-group-functional-verification-study/) (SIEMENS)

----

#### ASIC Verification Languages

![ASIC verification languages](images/hdl/wrg-asic-verif-languages.png)

**Source:** [The 2020 Wilson Research Group Functional Verification Study](https://blogs.sw.siemens.com/verificationhorizons/2021/01/20/part-10-the-2020-wilson-research-group-functional-verification-study/) (SIEMENS)

---

### Alternatives

----

#### High Level Synthesis

* AKA algorithmic/behavioral synthesis.
* Subset of C (or variants) + directives (vendor-specific).
* The result is an extremely vendor-specific RTL.
* Useful for architecture exploration of algorithms.
* Can't be used to create processors or controllers, neither to deal with multiple clock domains.

----

#### Others HDLs

* Python based: (n)Migen, MyHDL
* Scala based: Chisel, SpinalHDL
* Haskell based: Clash, Bluespec
* Verilog based: TL-Verilog, Silice
* And more...

---

### Recommendation

If you want to design for ASICs/FPGAs, you should know [System]Verilog and/or VHDL.

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
