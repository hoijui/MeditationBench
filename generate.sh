#!/usr/bin/env sh

# SPDX-FileCopyrightText: 2021 Robin Vobruba <hoijui.quaero@gmail.com>
#
# SPDX-License-Identifier: CC0-1.0

# Main image
openscad \
	--imgsize=1600,1024 \
	--projection=perspective \
	--autocenter \
	--camera=1100,1200,0,0,0,250 \
	-o MeditationSeat.png \
	MeditationSeat.scad

# Rendering the work template
openscad \
	--imgsize=2000,800 \
	--projection=perspective \
	--autocenter \
	--camera=500,100,1500,0,-50,140 \
	--render \
	-D SHOW_ASSEMBLED=false \
	-o MeditationSeat_work_template.png \
	MeditationSeat.scad

# Rendering the assembled bench
openscad \
	--imgsize=1600,1024 \
	--projection=perspective \
	--autocenter \
	--camera=-700,-400,100,0,-50,100 \
	--render \
	-D SHOW_WORK_TEMPLATE=false \
	-o MeditationSeat_assembled.png \
	MeditationSeat.scad

# Generate assembled STL
openscad \
	-D SHOW_WORK_TEMPLATE=false \
	-o MeditationSeat_assembled.stl \
	MeditationSeat.scad

# Generate work template STL
openscad \
	-D SHOW_ASSEMBLED=false \
	-o MeditationSeat_work_template.stl \
	MeditationSeat.scad
