--[[----------------------------------------------------------------------------

Info.lua
Summary information for DateExport plug-in

------------------------------------------------------------------------------]]

return {

	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 1.3, -- minimum SDK version required by this plug-in

	LrToolkitIdentifier = 'org.nyanya.lightroom.dateexport',

	LrPluginName = "Date Export",
	
	LrExportServiceProvider = {
		title = "Date Export",
		file = 'DateExportServiceProvider.lua',
	},
	
	LrPluginInfoProvider = 'DateExportInfoProvider.lua',

	VERSION = { major=0, minor=2, revision=0, build=0, },

}
