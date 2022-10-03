---
title: '[MeditationBench](https://github.com/hoijui/MeditationBench) - [OSH](https://en.wikipedia.org/wiki/Open-source_hardware) quality report'
subtitle: 'Produced by the [`osh`-tool](https://gitlab.com/OSEGermany/osh-tool/)'
---

| | |
| --- | -------- |
| _version_ | 9915c22322f7a59aa95c947f2e6d1233f5ac16d7 |
| _version release date_ | N/A |
| _branch_ | master |
| _report build date_ | N/A |
| _licenses_ | N/A |

| Passed | Check | Message |
| - | --- | ----- |
| <font color="red">failed</font> | LICENSE exists | <font color="red">__Severe__</font> - No LICENSE (or COPYING) file found in the root directory. <br>&nbsp;    Please consider adding a LICENSE(.md). <br>&nbsp;    You might want to choose one from a list by issuing `osh init --license`. |
| <font color="green">passed</font> | No unwanted files |  |
| <font color="red">failed</font> | No space in file names | <font color="light-blue">__Light__</font> - Files with spaces in their names (Please consider renaming them): <br>&nbsp;     <br>&nbsp;    - fatal: detected dubious ownership in repository at '/github/workspace' <br>&nbsp;    - To add an exception for this directory, call: <br>&nbsp;    - 	git config --global --add safe.directory /github/workspace <br>&nbsp;    - fatal: detected dubious ownership in repository at '/github/workspace' <br>&nbsp;    - To add an exception for this directory, call: <br>&nbsp;    - 	git config --global --add safe.directory /github/workspace |
| <font color="red">failed</font> | README exists | <font color="orange">__Middle__</font> - No README file found in the root directory. <br>&nbsp;    Please consider adding a 'README.md'. <br>&nbsp;    You might want to generate a template by issuing `osh init --readme`, <br>&nbsp;    or manually reating it. |
| <font color="green">passed</font> | No sources in root |  |
| <font color="green">passed</font> | Might be generated |  |
| <font color="red">failed</font> | OKH file exists | <font color="red">__Severe__</font> - Open Know-How meta-data file (okh.toml) not found. <br>&nbsp;    Please consider creating it, if this is an OSH project. <br>&nbsp;    See <https://github.com/OPEN-NEXT/OKH-LOSH/blob/master/sample_data/okh-TEMPLATE.toml> for a template. |
