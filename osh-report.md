---
title: '[MeditationBench](https://github.com/hoijui/MeditationBench) - [OSH](https://en.wikipedia.org/wiki/Open-source_hardware) quality report'
subtitle: 'Produced by the [`osh`-tool](https://gitlab.com/OSEGermany/osh-tool/)'
---

## Project meta-data

| | |
| --- | -------- |
| _version_ | 88daa8b94179dc5a704595010c0725f9f5753c5c |
| _version release date_ | 2022-10-13 19:44:41 |
| _branch_ | master |
| _report build date_ | 2022-10-25 08:29:30 |
| _licenses_ | CC-BY-SA-4.0, CC0-1.0, Unlicense |

## Report tools

| [CLI](https://en.wikipedia.org/wiki/Command-line_interface) tool | version |
| --- | -------- |
| [`osh`](https://gitlab.com/OSEGermany/osh-tool/) | 0.2.0 |
| [`okh`](https://github.com/OPEN-NEXT/LOSH-OKH-tool) | 0.3.1 |
| [`reuse`](https://github.com/fsfe/reuse-tool/) | 1.0.0 |
| [`projvar`](https://github.com/hoijui/projvar/) | 0.11.0 |

## Report

| Passed | Check | Message |
| - | --- | ----- |
| <font color="green">passed</font> | README exists |  |
| <font color="green">passed</font> | REUSE/SPDX Licensing info |  |
| <font color="green">passed</font> | OKH file exists |  |
| <font color="green">passed</font> | No sources in root |  |
| <font color="green">passed</font> | LICENSE exists |  |
| <font color="red">failed</font> | OKH manifest content | <font color="orange">__Middle__</font> - 08:29:30 [WARN] File: './okh.toml' <br>&nbsp;    Failed to validate: <br>&nbsp;     <br>&nbsp;    # Validation error(s): <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("repo") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("version") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("license") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("licensor") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("function") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;     |
| <font color="green">passed</font> | No unwanted files |  |
| <font color="green">passed</font> | Clean CAD files |  |
| <font color="green">passed</font> | Might be generated |  |
| <font color="green">passed</font> | No space in file names |  |
