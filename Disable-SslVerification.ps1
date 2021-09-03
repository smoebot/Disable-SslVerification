function Disable-SslVerification
<#
    .SYNOPSIS
        Sets Powershell environment to disable SSL certificate validity checks
    .DESCRIPTION
        This is horrible.  You should never use this in production
    .INPUTS
        None
    .OUTPUTS
        Output
    .NOTES
        Version:        0.1
        Author:         Joel Ashman
        Creation Date:  2020-04-03
        Purpose/Change: Initial script
    .EXAMPLE
       Disable-SslVerificatiion
       (then cry)
    #>
{
    if (-not ([System.Management.Automation.PSTypeName]"TrustEverything").Type)
    {
        Add-Type -TypeDefinition  @"
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
public static class TrustEverything
{
    private static bool ValidationCallback(object sender, X509Certificate certificate, X509Chain chain,
        SslPolicyErrors sslPolicyErrors) { return true; }
    public static void SetCallback() { System.Net.ServicePointManager.ServerCertificateValidationCallback = ValidationCallback; }
    public static void UnsetCallback() { System.Net.ServicePointManager.ServerCertificateValidationCallback = null; }
}
"@
    }
    [TrustEverything]::SetCallback()
}
