# GPIO breakout

The AXI GPIO core's pins and the Zynq's EMIO GPIO pins are bundled together. It's pretty annoying to use Slice and Concat IPs to connect stuff to them. This module lets you use a separate interface port for each pin. The number of pins can be configured in the customization GUI (max 16 for now).

<img src="etc/usage_example.png" width="70%">

*Note: This is a packeged IP core. You can add it to the IP Catalog by adding this folder (or any of its parents) in Tools / Settings / IP / Repository*
