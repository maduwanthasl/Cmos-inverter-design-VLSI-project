# CMOS Inverter Design - VLSI Project

This repository serves as a guide for designing a CMOS inverter using NGspice software.

## 📋 Table of Contents
- [CMOS Inverter Input-Output Characteristics](#vinvsvut)

## CMOS Inverter Input-Output Characteristics
#### Circuit
![CMOS Inverter Transfer Characteristics](https://github.com/maduwanthasl/Cmos-inverter-design-VLSI-project/blob/main/second_test/inv_vtc.png?raw=true)
#### Vin vs Vout and Gain vs Vout

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
VIL(Input Low Voltage) = 7.767556e-01
VIH(Input High Voltage) = 1.029244e+00

