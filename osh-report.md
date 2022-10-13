---
title: '[MeditationBench](https://github.com/hoijui/MeditationBench) - [OSH](https://en.wikipedia.org/wiki/Open-source_hardware) quality report'
subtitle: 'Produced by the [`osh`-tool](https://gitlab.com/OSEGermany/osh-tool/)'
---

## Project meta-data

| | |
| --- | -------- |
| _version_ | 6e74acbb038fca469ea6b2461458fe0de0915fb1 |
| _version release date_ | 2022-10-06 14:40:48 |
| _branch_ | master |
| _report build date_ | 2022-10-13 18:07:28 |
| _licenses_ | CC-BY-SA-4.0, CC0-1.0, Unlicense |

## Report tools

| [CLI](https://en.wikipedia.org/wiki/Command-line_interface) tool | version |
| --- | -------- |
| [`osh`](https://gitlab.com/OSEGermany/osh-tool/) | 0.1.0 |
| [`okh`](https://github.com/OPEN-NEXT/LOSH-OKH-tool) | 0.3.1 |
| [`projvar`](https://github.com/hoijui/projvar/) | 0.11.0 |

## Report

| Passed | Check | Message |
| - | --- | ----- |
| <font color="green">passed</font> | LICENSE exists |  |
| <font color="green">passed</font> | No unwanted files |  |
| <font color="green">passed</font> | No space in file names |  |
| <font color="green">passed</font> | Clean CAD files |  |
| <font color="green">passed</font> | README exists |  |
| <font color="red">failed</font> | OKH manifest content | <font color="orange">__Middle__</font> - 18:07:28 [WARN] File: './okh.toml' <br>&nbsp;    Failed to validate: <br>&nbsp;     <br>&nbsp;    # Validation error(s): <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("repo") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("version") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("license") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("licensor") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("function") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;     |
| <font color="red">failed</font> | REUSE/SPDX Licensing info | <font color="red">__Severe__</font> - ERROR Failed to run 'reuse'; make sure it is in your PATH: Bad file descriptor <br>&nbsp;    Additional info: Could not find command: 'reuse'. OS error: No such file or directory |
| <font color="green">passed</font> | No sources in root |  |
| <font color="green">passed</font> | Might be generated |  |
| <font color="green">passed</font> | OKH file exists |  |
