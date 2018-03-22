# APKInjector
This tool is a tweaked version of the kwetza tool. It automates the process of injecting a backdoor into an APK-file.

Some changes to kwetza:
  - IP address is used from the machine it is running on (Kali for example).
  - APK can be accessed from everywhere, in kwetza it had to be in the folder of kwetza.
  - Bug fixes.

### Usage
```
py APKInjector.py app.apk type port
```

### Example
```
py APKInjector.py facebook-lite.apk tcp 1337
```
