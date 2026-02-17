# Offensive Security Exam Report Template
<!-- 16-01-2026 -->


## Requirements

### 1. Docker and docker-compose
```bash
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo apt install docker-compose
sudo usermod -aG docker $USER
sudo reboot now
```


### 2. Recomended screenshot tool
* xclip (Snipping Tool that saves images on clipboard)
```bash
sudo apt install xclip flameshot
```
> [!IMPORTANT]
> After intall, add keyboard shortcut (keyboard > Application Shortcuts > +Add)
>> Shortcut: Shift + S  
>> Command: flameshot gui


### 3. VSCode
* Download and install manually official vscode: https://code.visualstudio.com/docs/?dv=linux64_deb
* VSCode extensions:

![](https://i.imgur.com/16QpXsg.png)
_< Manage extension settings and edit folloing path:_
![](https://i.imgur.com/HCvv0hj.png)  
> [!TIP]
> For paste images on documents: CTRL + ALT + V







## Usage  
```bash
git clone https://github.com/ohydra/OSCP-Report-Template.git
cd ~/OSCP-Report-Template
```
<ins> And now, in VSCode inport the folder like the following example: </ins>  

![](https://i.imgur.com/LfgrzNp.png)
> [!TIP]
> For build the report easily, use the terminal window inside VSCode.  


## Build report  
_After editing, and to verifying the report's build, execute the commands below in order:_  

* Generate the docker image with
```bash
./build.sh
```
* Enter the container that has all the LaTeX dependencies
```bash

./run.sh
```
* Generate pdf with
```bash

./build_pdf.sh
```

## Customize

> `build_pdf.sh` contains the paths from the source and the target, do not change the main folder `src` as this is hardcoded in the `osert.rb`, but you can change the report.md to something else.

> Same for `output` folder (do not change it), but you can change the filename to something else.

```sh
#!/bin/bash
ruby osert.rb generate 'src/report.md' 'output/report.pdf'
```  

### **Report Templates:**

* OSCP whoisflynn improved template v3.2  
![](https://i.imgur.com/Z344YCQ.png)
![](https://i.imgur.com/wegbNYr.png)

* OSCP Official Offensive Security Template v1  
![](https://i.imgur.com/9zoWFfr.png)
![](https://i.imgur.com/MWSgxfh.png)

* Others
![](https://i.imgur.com/XiXIZg3.png)

  * Network Penetration Testing:

    - **OSCP**
      - [Official Offensive Security Template v1](output/examples/OSCP-exam-report-template_OS_v1.pdf)
      - [Official Offensive Security Template v2](output/examples/OSCP-exam-report-template_OS_v2.pdf)
      - [whoisflynn][whoisflynn] improved [template](output/examples/OSCP-exam-report-template_whoisflynn_v3.2.pdf) v3.2
    - **OSWP**
      - [Official Offensive Security Template v1](output/examples/OSWP-exam-report-template_OS_v1.pdf)
    - **OSEP**
      - [Official Offensive Security Template v1](output/examples/OSEP-exam-report-template_OS_v1.pdf)
      - [ceso][ceso] improved [template](output/examples/OSEP-exam-report-template_ceso_v1.pdf) v1

  * Web Application:

    - **OSWA**
      - [Official Offensive Security Template v1](output/examples/OSWA-exam-report-template_OS_v1.pdf)
    - **OSWE**
      - [Official Offensive Security Template v1](output/examples/OSWE-exam-report-template_OS_v1.pdf)
      - [noraj][noraj] improved [template](output/examples/OSWE-exam-report-template_noraj_v1.pdf) v1
      - [xl-sec][XL-SEC] improved [template](output/examples/OSWE-exam-report-template_xl-sec_v1.pdf) v1

  * Exploit Development:

    - **OSED**
      - [Official Offensive Security Template v1](output/examples/OSED-exam-report-template_OS_v1.pdf)
      - [epi][epi] improved [template](output/examples/OSED-exam-report-template_epi_v1.pdf) v1
    - **OSEE**
      - [Official Offensive Security Template v1](output/examples/OSEE-exam-report-template_OS_v1.pdf)
    - **OSCE** (**deprecated**)
      - [Official Offensive Security Template v1](output/examples/OSCE-exam-report-template_OS_v1.pdf)
    - **OSMR**
       - [Official Offensive Security Template v1](output/examples/OSMR-exam-report-template_OS_v1.pdf)

  * Security Operations:

    - **OSDA**
      - [Official Offensive Security Template v1](output/examples/OSDA-exam-report-template_OS_v1.pdf)

  * Threat Hunting:

    - **OSTH**
      - [Official Offensive Security Template v1](output/examples/OSTH-exam-report-template_OS_v1.pdf)

  * Incident Response:

    - **OSIR**
      - [Official Offensive Security Template v1](output/examples/OSIR-exam-report-template_OS_v1.pdf)

  * Offensive Security course table:

Exam acronym | Exam name                                         | Lab acronym | Lab name                                   | Course designation
-------------|---------------------------------------------------|-------------|--------------------------------------------|-------------------
**OSCP**     | Offensive Security Certified Professional         | PWK         | Penetration Testing with Kali Linux        | PEN-200
**OSWP**     | Offensive Security Wireless Professional          | WA          | Wireless Attacks                           | PEN-210
**OSEP**     | Offensive Security Experienced Penetration Tester | ETBD        | Evasion Techniques and Breaching Defenses  | PEN-300
**OSWA**     | Offensive Security Web Assessor                   | WAKL        | Web Attacks with Kali Linux                | WEB-200
**OSWE**     | Offensive Security Web Expert                     | AWAE        | Advanced Web Attacks and Exploitation      | WEB-300
**OSED**     | Offensive Security Exploit Developer              | WUMED       | Windows User Mode Exploit Development      | EXP-301
**OSMR**     | Offensive Security macOS Researcher               | MCB         | macOS Control Bypasses                     | EXP-312
**OSEE**     | Offensive Security Exploitation Expert            | AWE         | Advanced Windows Exploitation              | EXP-401
**OSCE**     | Offensive Security Certified Expert               | CTP         | Cracking the Perimeter                     | N/A
**OSDA**     | Offensive Security Defense Analyst                | SODA        | Security Operations and Defensive Analysis | SOC-200
**OSTH**     | Offensive Security Threat Hunting                 | TH          | Threat Hunting                             | TH-200
**OSIR**     | Offensive Security Incident Response              | IR          | Incident Response                          | IR-200

### Color sets

Well rendering color sets you can use in the template YAML frontmatter:

titlepage-color          | titlepage-text-color | titlepage-rule-color
-------------------------|----------------------|---------------------
`DC143C` (Crimson)       | `FFFFFF` (White)     | `FFFFFF` (White)
`00FF7F` (SpringGreen)   | `006400` DarkGreen   | `000000` (Black)
`1E90FF` (DodgerBlue)    | `FFFAFA` (Snow)      | `FFFAFA` (Snow)
`483D8B` (DarkSlateBlue) | `FFFAFA` (Snow)      | `FFFAFA` (Snow)
`FFD700` (Gold)          | `000000` (Black)     | `000000` (Black)
`FFEFD5` (PapayaWhip)    | `000000` (Black)     | `000000` (Black)
`FF8C00` (DarkOrange)    | `000000` (Black)     | `000000` (Black)
`FFEF96` (no name)       | `50394C` (no name)   | `50394C` (no name)

> [!NOTE]
> The respective color categories can be changed on the top of `report.md` file.


## Credits
- Forked and modified from [https://github.com/blu3drag0nsec/report-template](https://github.com/blu3drag0nsec/report-template)
- Inspired in the work of [https://github.com/noraj/OSCP-Exam-Report-Template-Markdown](https://github.com/noraj/OSCP-Exam-Report-Template-Markdown)
