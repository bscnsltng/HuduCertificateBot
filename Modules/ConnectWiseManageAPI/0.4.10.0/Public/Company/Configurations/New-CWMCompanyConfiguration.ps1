﻿function New-CWMCompanyConfiguration {
    # 2020.4
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '', Justification = 'Used by sub-function')]
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param(
        [Parameter(Mandatory=$true)]
        [ValidateLength(1,100)]
        [string]$name,
        [Parameter(Mandatory=$true)]
        [hashtable]$type,
        [hashtable]$status,
        [Parameter(Mandatory=$true)]
        [hashtable]$company,
        [hashtable]$contact,
        [hashtable]$site,
        [int]$locationID,
        [int]$businessUnitID,
        [ValidateLength(0,100)]
        [string]$deviceIdentifier,
        [ValidateLength(0,250)]
        [string]$serialNumber,
        [ValidateLength(0,50)]
        [string]$modelNumber,
        [ValidateLength(0,50)]
        [string]$tagNumber,
        [string]$purchaseDate,
        [string]$installationDate,
        [hashtable]$installedby,
        [string]$warrantyExpirationDate,
        [string]$vendorNotes,
        [string]$notes,
        [ValidateLength(0,25)]
        [string]$macAddress,
        [ValidateLength(0,100)]
        [string]$lastLoginName,
        [boolean]$billFlag,
        [int]$backupSuccesses,
        [int]$backupIncomplete,
        [int]$backupFailed,
        [int]$backupRestores,
        [string]$lastBackupDate,
        [ValidateLength(0,50)]
        [string]$backupServerName,
        [long]$backupBillableSpaceGb,
        [string]$backupProtectedDeviceList,
        [int]$backupYear,
        [int]$backupMonth,
        [ValidateLength(0,50)]
        [string]$ipAddress,
        [ValidateLength(0,50)]
        [string]$defaultGateway,
        [ValidateLength(0,250)]
        [string]$osType,
        [ValidateLength(0,250)]
        [string]$osInfo,
        [ValidateLength(0,100)]
        [string]$cpuSpeed,
        [ValidateLength(0,25)]
        [string]$ram,
        [string]$localHardDrives,
        [int]$parentConfigurationId,
        [hashtable]$vendor,
        [hashtable]$manufacturer,
        [array]$questions,
        [boolean]$activeFlag,
        [validatelength(0,1000)]
        [string]$managementLink,
        [validatelength(0,1000)]
        [string]$remoteLink,
        [hashtable]$sla,
        [string]$mobilezGuid,
        [hashtable]$_info,
        [boolean]$displayVendorFlag,
        [int]$companyLocationId,
        [boolean]$showRemoteFlag,
        [boolean]$showAutomateFlag,
        [boolean]$needsRenewalFlag,
        [ValidateLength(0,50)]
        [string]$manufacturerPartNumber,
        [array]$customFields
    )
    $Endpoint = 'company/configurations'
    Invoke-CWMNewMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}