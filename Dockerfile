# Usa a imagem oficial do PowerShell
FROM mcr.microsoft.com/powershell:lts-ubuntu-22.04

# Define o diretório de trabalho
WORKDIR /root

# Instala pacotes necessários (exemplo: módulos do PowerShell e pacotes Linux)
RUN apt-get update -q && \
    apt-get install -q -y wget curl
	
# Instala versoes da libssl 1.1 e gss-ntlmssp para funcionar
RUN wget -q https://snapshot.debian.org/archive/debian/20160825T223758Z/pool/main/o/openssl/libssl1.1_1.1.0-1_amd64.deb -P /tmp/ && \
    wget -q http://ftp.us.debian.org/debian/pool/main/g/gss-ntlmssp/gss-ntlmssp_0.7.0-4_amd64.deb -P /tmp/ && \
    apt-get install -q -y /tmp/libssl*.deb && \
    apt-get install -q -y --allow-downgrades /tmp/gss-ntlmssp*.deb && \
    rm -rf /tmp/*.deb

# Instala módulos do PowerShell necessários
RUN pwsh -Command "Install-Module -Name PSWSMan -Force" && \
    pwsh -Command "Install-WSMan"

# Define o shell padrão para pwsh
CMD ["pwsh"]
