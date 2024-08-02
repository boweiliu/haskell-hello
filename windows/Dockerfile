# Use a Windows base image with the necessary tools
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Install Visual Studio Build Tools
RUN powershell -Command \
    Invoke-WebRequest -Uri https://aka.ms/vs/16/release/vs_buildtools.exe -OutFile vs_buildtools.exe; \
    Start-Process vs_buildtools.exe -ArgumentList '--quiet', '--norestart', '--nocache', '--includeRecommended', '--add', 'Microsoft.VisualStudio.Workload.VCTools' -NoNewWindow -Wait; \
    Remove-Item -Force vs_buildtools.exe

