# Digital Electronics - The Demultiplixer 3-to-8 SN74LS138N (Simulation)
## About
<p>This project was built along with the Laboratory Digital Electronics at the Technical University of Applied Sciences of Regensburg (OTH Regensburg), Bavaria, Germany. The simulation of the Multiplexer 8-to-3 SN74LS148N with AMD Vivado is the focus of the project.</p>

## The logic-IC - SN74LS138N
<p>The SN74LS138N is a 3-to-8 line demultiplexer from Texas Instruments. It takes a 3-bit binary input and activates one of eight outputs <br>[NOT(O<sub>0</sub>) .. NOT(0<sub>7</sub>)], depending on the 3 inputs [A<sub>0</sub> .. A<sub>2</sub>] combination. All outputs are active-low, meaning the selected output goes low (0), while the others stay high (1).</p>
<p>It also includes three Enable inputs; two active LOW (NOT(E1), NOT(E2)) and one active HIGH (E3), allowing for control and easy cascading of multiple units for larger decoding applications. It's widely used in memory address decoding and digital circuit control.</p>
<div align="center">
  <img src="https://github.com/user-attachments/assets/d8d092c7-4c5b-410f-8eda-1f9f9d89733b" width = "700"><sub>(1)</sub>
</div>

<article>
  For this simulation I used the following inputs and outputs:
  <ul>
  <li><b>The inputs:</b></li>
    <ul>
      <li>3-bits vector [A0, A1, A2] with the pins (pin 1, pin 2, pin 3)
      <li>1-bit vector [NOT(E1)] with the pin 4
      <li>1-bit vector [NOT(E2)] with the pin 5
      <li>1-bit vector [E3] with the pin 6
    </ul>
  <br>
  <li><b>The outputs:</b></li>
    <ul>
      <li>8-bits vector [NOT(O<sub>0</sub>), NOT(O<sub>1</sub>), NOT(O<sub>2</sub>), NOT(O<sub>3</sub>), NOT(O<sub>4</sub>), NOT(O<sub>5</sub>), NOT(O<sub>6</sub>), NOT(O<sub>7</sub>)] with the pins (pin 15, pin 14, pin 13, pin 12, pin 11, pin 10, pin 9, pin 7)
    </ul>
  </ul>
</article>

<br>
<p>Here’s a truth table summarizing the operation of the IC SN74LS138N:</p>
<div align="center">
  <img src="https://github.com/user-attachments/assets/8822090e-b719-4112-b1a1-723c9a459470" width = "880"><sub>(2)</sub>
</div>

## Simulation
<p>After creating a testbench for this project, you can see how the Logic-IC can be used as an 8-output demultiplexer by
tying the inputs NOT(E1) and NOT(E2) permanently to the active LOW state and the input E3 permanently to the active HIGH state.</p>
<article>
  
</article>
<div align="center">
  <img src="https://github.com/user-attachments/assets/e3d949fc-cd8a-4f1d-9338-9c914373a0ea"/>
</div>

###### <p>Sources:<br>(1)(2): https://cnic.ro/ed/ic/SN74LS138-D1of8_Decoder-Demultiplexer.PDF</p>
