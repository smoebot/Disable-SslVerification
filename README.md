# Disable-SslVerification.ps1

Disable SSL verification for Powershell requests

Connecting to web interfaces that have an invalid certificate in PowerShell is not allowed - Powershell refuses connection if the validity check fails.

This function sets the Powershell environment to disable SSL certificate validity checks

This is horrible.  You should never use this in production

---

**Parameters**

None

---

**Examples**

Disable-SslVerification
