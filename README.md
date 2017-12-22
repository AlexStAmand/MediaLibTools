# Set-MediaLanguage

### SYNOPSIS

Sets the language metadata flag on .mp4 & .m4v video files.

### SYNTAX

	Set-MediaLanguage [-Path] <String> [[-Language] <String>] [[-Type] <String>] [[-Limit] <String>] [-Recurse <SwitchParameter>] [-Video <SwitchParameter>] [-Audio <SwitchParameter>] [-Analyze <SwitchParameter>] [-ListFiles <SwitchParameter>] [-ShowStats <SwitchParameter>] [<CommonParameters>]

### DESCRIPTION

When a media files language is not properly set (undefined) then media servers (such as Plex) may report the language as
"Unknown Audio" in the media details.

This script will recursively search a given path for any media files with either a missing or incorrectly set language
metadata flag and correct it.

The PowerShell Module 'Get-Mediainfo' (GetMediaInfo.dll) is used to determine which files require modification. The
script then uses mp4box.exe to set the language metadata tag on the video and/or audio tracks of each file. If the file
only requires one track be modified then only that track will be processed.

### INSTALLATION

### PARAMETERS

``-Path <String>``

	Required?                    true
	Position?                    0
	Default value                [System.ENVIRONMENT]::CurrentDirectory
	Accept pipeline input?       True (ByPropertyName, ByValue)
	Accept wildcard characters?  false
Specifies a path to one or more locations. Wildcards are permitted. The default location is the current directory (.).

``-Language [<String>]``

	Required?                    false
	Position?                    1
	Default value                System Language
	Accept pipeline input?       false
	Accept wildcard characters?  false
Specifies the language to match in all operations. If not specified the system language is used.

``-Type [<String>]``

	Required?                    false
	Position?                    2
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
Specifies the media file type that this cmdlet will include in the operation. Supported media file types are .mp4 and .m4v. The value of this parameter qualifies the Path parameter and if set, limits the cmdlet processing to only matching media file types. If not specified, the cmdlet will process all supported file types.

``-Limit [<String>]``

	Required?                    false
	Position?                    3
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
Gets only the specified number of objects. Enter the number of objects to get.

``-Recurse [<SwitchParameter>]``

	Required?                    false
	Position?                    named
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
Indicates that this cmdlet gets the items in the specified locations and in all child items of the locations.

(Note: In Windows PowerShell 2.0 and earlier versions of Windows PowerShell, the Recurse parameter works only when the value of the Path parameter is a container that has child items.)

``-Video [<SwitchParameter>]``

	Required?                    false
	Position?                    named
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
If set, file processing will be limited to Video tracks only. Ignored if `-Analyze` option is used.

``-Audio [<SwitchParameter>]``

	Required?                    false
	Position?                    named
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
If set, file processing will be limited to Audio tracks only. Ignored if `-Analyze` option is used.

``-Analyze [<SwitchParameter>]``

	Required?                    false
	Position?                    named
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
If set, the cmdlet will analyze the language tracks on each matching file found in the specified path. No files will be modified.

``-Force [<SwitchParameter>]``

	Required?                    false
	Position?                    named
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
Processing media on remote/mapped drives is not recommended and is not allowed by default. Setting this flag changes the default behavior allowing file processing on media located on mapped drives.

``-ListFiles [<SwitchParameter>]``

	Required?                    false
	Position?                    named
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
If set, the cmdlet will display a listing of all files found. If unset, the cmdlet will only display a count of all files found.

``-ShowStats [<SwitchParameter>]``

	Required?                    false
	Position?                    named
	Default value
	Accept pipeline input?       false
	Accept wildcard characters?  false
If set, the cmdlet will display statistical information.

``<CommonParameters>``

This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters <https:/go.microsoft.com/fwlink/?LinkID=113216>.

### EXAMPLES

##### EXAMPLE 1

	C:\PS>Set-MediaLanguage -Path <Media Path> -Language English -Analyze

Analyze all supported media files in the specified path against the language "English" and output the result (file count).

##### EXAMPLE 2

	C:\PS>Set-MediaLanguage -Path <Media Path> -Language English -Analyze -Verbose

Analyze all supported media files in the specified path against the language "English" and output verbose results (full file listing).

##### EXAMPLE 3

	C:\PS>Set-MediaLanguage -Path <Media Path> -Language English

Process all supported media files in the specified path against the language "English" and output the result (file count).

##### EXAMPLE 4

	C:\PS>Set-MediaLanguage -Path <Media Path> -Type .mp4 -Language English

Process only .mp4 media files in the specified path against the language "English" and output the result (file count).

### INPUTS

	System.String[]

You can pipe a file system path (in quotation marks) to Set-MediaLanguage.

### OUTPUTS

	NONE
