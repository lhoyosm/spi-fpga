#-------------------------------------------------------------------------------
# PROJECT: SPI MASTER AND SLAVE FOR FPGA
#-------------------------------------------------------------------------------
# NAME:    SIMULATION TCL SCRIPT FOR MODELSIM
# AUTHORS: Jakub Cabal <jakubcabal@gmail.com>
# LICENSE: LGPL-3.0, please read LICENSE file
# WEBSITE: https://github.com/jakubcabal/spi-fpga
#-------------------------------------------------------------------------------
# COPYRIGHT NOTICE:
#-------------------------------------------------------------------------------
# SPI MASTER AND SLAVE FOR FPGA
# Copyright (C) 2017 Jakub Cabal
#
# This source file is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This source file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#-------------------------------------------------------------------------------

# Compile VHDL files
vlib work
vcom ../rtl/spi_master.vhd
vcom ../rtl/spi_slave.vhd
vcom ./spi_tb.vhd
# Load testbench
vsim work.spi_tb
# Setup and start simulation
add wave *
add wave sim:/spi_tb/master_i/*
add wave sim:/spi_tb/slave_i/*
run 6 us