# PowerShell on Ubuntu 22.04 with WinRM & NTLM Support

## Description
This image is based on **PowerShell LTS for Ubuntu 22.04**, with additional dependencies for remote management and automation.

### Features:
- **Pre-installed PowerShell WSMan module (`PSWSMan`)** for **WinRM** support.
- **NTLM authentication compatibility** via `gss-ntlmssp`.
- **Essential tools** (`wget`, `curl`) for scripting and remote operations.
- **Pre-installed OpenSSL 1.1 (`libssl1.1`)** for compatibility with older services.

## Included Packages & Modules
- **Base Image:** `mcr.microsoft.com/powershell:lts-ubuntu-22.04`
- **Installed Packages:** `wget`, `curl`
- **Extra Dependencies:** `libssl1.1`, `gss-ntlmssp`
- **Pre-installed PowerShell Module:** `PSWSMan`

## Use Cases
✅ Secure remote management via **WinRM** with NTLM authentication.  
✅ Running **PowerShell automation scripts** in a Linux container.  
✅ **Developing & testing** PowerShell commands in an isolated environment.  
✅ Lightweight PowerShell environment for **system administration**.


## Categories
- **PowerShell**
- **Linux**
- **Automation**
- **DevOps**
- **Remote Management**
- **Scripting**
- **Ubuntu**
- **System Administration**

