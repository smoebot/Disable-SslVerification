# Disable-SslVerification.ps1

Powershell. Disable SSL certificate validation for Powershell requests

Connecting to web interfaces that have an invalid certificate in PowerShell is not allowed - Powershell refuses connection if any validity check fails.

This function sets the Powershell environment to disable SSL certificate validity checks

This is horrible.  You should never use this in production

---

**Parameters**

None

---

**Examples**

Disable-SslVerification
