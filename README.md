# CMOS Inverter Design - VLSI Project

This repository serves as a guide for designing a CMOS inverter using NGspice software.

## 📋 Table of Contents
- [CMOS Inverter Input-Output Characteristics](#vinvsvut)
- [DC analysis](#dcanalyis)
- [Transient analysis](#transientanalysis)
- [Power analysis](#poweranalysis)

## CMOS Inverter Input-Output Characteristics
#### Circuit
![CMOS Inverter Transfer Characteristics](https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/second_test/inv_vtc.png?raw=true)
### DC analysis

<table>
  <tr>
    <td align="center">
      <strong>Vin vs Vout</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/second_test/Vin%20vs%20vout.png?raw=true" alt="Vin vs Vout" style="max-width:100%;">
    </td>
    <td align="center">
      <strong>Gain vs Vout</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/second_test/gain%20vs%20vout.png?raw=true" alt="Gain vs Vout" style="max-width:100%;">
    </td>
  </tr>
</table>

#### Simulation code
```sh
display
plot vin vs vout
let gain=(abs(deriv(vout) >= 1)*1.8
plot gain vout
```
#### Noise margin
To find the noise margin run following code.
```sh
meas vil dc find vin when gain=1 cross=1
meas vil dc find vin when gain=1 cross=last
```
In my case

- VIL(Input Low Voltage) = 7.767556e-01
- VIH(Input High Voltage) = 1.029244e+00

### Transient analysis

<table>
  <tr>
    <td align="center">
      <strong>Vin vs Vout</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/second_test/Vin%20vs%20Vout%20-%20tran.png?raw=true" alt="Vin vs Vout" style="max-width:100%;">
    </td>
    <td align="center">
      <strong>Simulation</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/second_test/Propergration%20delay%20cal-%20simulation.png?raw=true" alt="Gain vs Vout" style="max-width:100%;">
    </td>
  </tr>
</table>

In my case

- Propergration delay(tpHL) = 3.480400e-11
- Rise time = 5.527400e-11
- By increasing the Vin (input power), size of the fet or reducing output capacitance we can reduce the rise time.

#### Adding load capacitor
![add load cap](https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/assets/107339150/bc479ee5-e182-4da4-88b6-8cc41bdb4148)

<table>
  <tr>
    <td align="center">
      <strong>Without increasing size of fet</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/assets/107339150/9195e22c-e87d-428c-9fb0-76fbbbb1d508" alt="Vin vs Vout" style="max-width:100%;">
    </td>
    <td align="center">
      <strong>With increasing size of the fet</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/assets/107339150/d097becb-6598-4491-9bd3-0cb2d4c8b5b6" alt="Gain vs Vout" style="max-width:100%;">
    </td>
  </tr>
</table>

### Power analysis
![image](https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/assets/107339150/ad37a358-25f5-434b-970a-963e730df7fb)

<table>
  <tr>
    <td align="center">
      <strong>Id vs Vout</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/assets/107339150/fd5bd570-7505-4a21-8e86-464cd01c7259" alt="Vin vs Vout" style="max-width:100%;">
    </td>
    <td align="center">
      <strong>Id current</strong><br>
      <img src="https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/assets/107339150/6a8a46ba-f2a8-4e70-a2b5-71c796933f0f" alt="Gain vs Vout" style="max-width:100%;">
    </td>
  </tr>
</table>


### Layout design
![image](https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/Layout%20design/Layout%20design.png)

### Spice netlist generated
![spice netlist generated](https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/Layout%20design/Generated%20spice.png)
