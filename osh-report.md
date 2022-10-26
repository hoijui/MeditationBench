---
title: '[MeditationBench](https://github.com/hoijui/MeditationBench) - [OSH](https://en.wikipedia.org/wiki/Open-source_hardware) quality report'
subtitle: 'Produced by the [`osh`-tool](https://gitlab.com/OSEGermany/osh-tool/)'
---

![OSH Report](osh-badge-report.svg)
![OSH Openness](osh-badge-openness.svg)

## This report in different formats

* [Markdown](osh-report.md)
* [HTML](osh-report.html)
* [JSON](osh-report.json)

## Project meta-data

| | |
| --- | -------- |
| _version_ | eaae91299c06f716b1bd7b1b2dfcb32697a99699 |
| _version release date_ | 2022-10-26 19:35:20 |
| _branch_ | master |
| _report build date_ | 2022-10-26 19:37:48 |
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
| <font color="red">failed</font> | OKH manifest content | <font color="orange">__Middle__</font> - 19:37:47 [WARN] File: './okh.toml' <br>&nbsp;    Failed to validate: <br>&nbsp;     <br>&nbsp;    # Validation error(s): <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("repo") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("version") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("license") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("licensor") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;    Error: <br>&nbsp;    	Kind:    Required { property: String("function") } <br>&nbsp;    	Where:    <br>&nbsp;    	Content: {"name":"MeditationBench","okhv":"OKH-LOSHv1.0"} <br>&nbsp;     |
| <font color="green">passed</font> | No unwanted files |  |
| <font color="green">passed</font> | Clean CAD files |  |
| <font color="green">passed</font> | Might be generated |  |
| <font color="green">passed</font> | No space in file names |  |

## Project Statistics

| Property | Value |
| --- | -- |
| Checks Run | 10 |
| Checks Skipped | 1 |
| Checks Passed | 9 |
| Checks Failed | 1 |
| Checks Available | 11 |
| Issues DeveloperFailure | 0 |
| Issues Severe | 0 |
| Issues Middle | 1 |
| Issues Light | 0 |
| Openness | 0.9449999928474426 |
