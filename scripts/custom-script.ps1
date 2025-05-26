param (
    [Parameter(Mandatory = $true)]
    [string]$AccessToken, # Access token for Microsoft Graph
    [switch]$VerboseMode  # Enable verbose output
)

# Enable verbose output if the switch is provided
if ($VerboseMode) {
    $VerbosePreference = "Continue"
    Write-Verbose "Verbose output enabled"
}

Write-Output "This is running from the PowerShell script"

# Authenticate to Microsoft Graph using the provided access token
Connect-MgGraph -AccessToken $(ConvertTo-SecureString -String $AccessToken -AsPlainText -Force) -NoWelcome

# Make a graph call
$ctx = Get-MgContext
[PSCustomObject]@{
    ClientId            = "****"
    TenantId            = "****"
    Scopes              = "****"
    AuthType            = $ctx.AuthType
    TokenCredentialType = $ctx.TokenCredentialType
    AppName             = $ctx.AppName
    ContextScope        = $ctx.ContextScope
    PSHostVersion       = $ctx.PSHostVersion
    Environment         = $ctx.Environment
} | Format-List