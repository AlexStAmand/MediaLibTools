@{
	# Script module or binary module file associated with this manifest
	ModuleToProcess = 'MediaLibTools'
	
	# Version number of this module.
	ModuleVersion = '1.17.1222.1'
	
	# HelpInfo URI of this module
	HelpInfoURI = 'https://github.com/AlexStAmand/MediaLibTools/tree/master/en-US'
	
	# ID used to uniquely identify this module
	GUID = 'f21ade39-b7f2-4b60-8f5e-44729275f0c2'
	
	# Author of this module
	Author = 'Alex St. Amand'
	
	# Company or vendor of this module
	CompanyName = 'Informal Technology, LLC.'
	
	# Copyright statement for this module
	Copyright = '(c) 2017 Alex. All rights reserved.'
	
	# Description of the functionality provided by this module
	Description = ''
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '5.0'

	# Minimum version of the common language runtime (CLR) required by this module
	CLRVersion = '4.0'

	# Processor architecture (None, X86, Amd64, IA64) required by this module
	ProcessorArchitecture = 'None'

	# Modules that must be imported into the global environment prior to importing this module
	RequiredModules = @()

	# Assemblies that must be loaded prior to importing this module
	RequiredAssemblies = '.\RequiredAssemblies\Get-MediaInfo.dll'

	# Script files (.ps1) that are run in the caller's environment prior to importing this module
	ScriptsToProcess = @()

	# Type files (.ps1xml) to be loaded when importing this module
	TypesToProcess = @()

	# Format files (.ps1xml) to be loaded when importing this module
	FormatsToProcess = @()

	# Modules to import as nested modules of the module specified in ModuleToProcess
	NestedModules = @()
	
	# Functions to export from this module
	FunctionsToExport = @('Get-MediaLanguage','Set-MediaLanguage','Compare-CaptionFileDate','Sync-CaptionFileDate')
	
	# Cmdlets to export from this module
	CmdletsToExport = @()

	# Variables to export from this module
	VariablesToExport = @()
	
	# Aliases to export from this module
	AliasesToExport = @()
	
	# List of all files packaged with this module
	FileList = 'MediaLibTools.psd1','MediaLibTools.psm1', 'Get-MediaInfo.dll', 'MediaInfo.dll'
	
	# Private data to pass to the module specified in ModuleToProcess
	PrivateData = @{}
}