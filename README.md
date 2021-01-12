# Install

## Prerequis:

- winget [https://www.microsoft.com/en-ca/p/app-installer/9nblggh4nns1?ocid=9nblggh4nns1_ORSEARCH_Bing&rtc=2&activetab=pivot:overviewtab](https://www.microsoft.com/en-ca/p/app-installer/9nblggh4nns1?ocid=9nblggh4nns1_ORSEARCH_Bing&rtc=2&activetab=pivot:overviewtab)


## WSL

To Remove the interop with windows (Remove bloated Path and) add this to /etc/wsl.config (create it):

```text
[interop]
enabled=false # enable launch of Windows binaries; default is true
appendWindowsPath=false # append Windows path to $PATH variable; default is true
```

Restart the service with admin powershell
```powershell
Restart-Service LxssManager
```
