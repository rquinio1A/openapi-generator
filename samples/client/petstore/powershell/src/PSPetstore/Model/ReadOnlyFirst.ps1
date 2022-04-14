#
# OpenAPI Petstore
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: "" \
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Bar
No description available.
.PARAMETER Baz
No description available.
.OUTPUTS

ReadOnlyFirst<PSCustomObject>
#>

function Initialize-PSReadOnlyFirst {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Bar},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Baz}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSReadOnlyFirst' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "bar" = ${Bar}
            "baz" = ${Baz}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReadOnlyFirst<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReadOnlyFirst<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReadOnlyFirst<PSCustomObject>
#>
function ConvertFrom-PSJsonToReadOnlyFirst {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSReadOnlyFirst' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSReadOnlyFirst
        $AllProperties = ("bar", "baz")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bar"))) { #optional property not found
            $Bar = $null
        } else {
            $Bar = $JsonParameters.PSobject.Properties["bar"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "baz"))) { #optional property not found
            $Baz = $null
        } else {
            $Baz = $JsonParameters.PSobject.Properties["baz"].value
        }

        $PSO = [PSCustomObject]@{
            "bar" = ${Bar}
            "baz" = ${Baz}
        }

        return $PSO
    }

}

