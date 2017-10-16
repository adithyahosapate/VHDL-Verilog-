# VHDL-Verilog-
Some simple VHDL/Verilog projects to get familiar with HDLs.

## Projects 

### Verilog 

* Half-Adder
* Full-Adder
* Xor-Gate
* Binary-counter(with LaTeX documentation)

### VHDL

*	Linear-Feedback Shift Register

## Dependencies 

For the verilog projects, **iverilog** and **gtkwave** are the dependencies
Run the following commands to install dependencies on Linux

```sh
sudo apt-get install gtkwave
sudo apt-get install iverilog
```


For the VHDL projects, **GHDL** and **gtkwave** are the dependencies
Run the following commands to install dependencies on Linux


### GHDL
```sh
sudo apt-get install gnat-5
git clone https://github.com/tgingold/ghdl
git checkout v0.33
cd ghdl
./configure --prefix=/usr/local
make
make install
ghdl --version
```

### GTKwave
```sh
sudo apt-get install gtkwave
```


To run the verilog code, navigate to the project directory and run
```sh
sh run.sh
```
