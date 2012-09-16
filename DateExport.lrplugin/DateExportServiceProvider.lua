--[[----------------------------------------------------------------------------

DateExportProvider.lua
Based on FtpUploadExportServiceProvider.lua

------------------------------------------------------------------------------]]

-- FtpUpload plug-in
require 'DateExportDialogSections'
require 'DateExportTask'


--============================================================================--

return {
	
	hideSections = { 'exportLocation' },

	allowFileFormats = nil, -- nil equates to all available formats
	
	allowColorSpaces = nil, -- nil equates to all color spaces

	exportPresetFields = {
		{ key = 'destPath', default = nil },
		{ key = 'dateFormat', default = '' },
		{ key = 'timeSource', default = 'metadata' },
	},

	startDialog = DateExportDialogSections.startDialog,
	sectionsForBottomOfDialog = DateExportDialogSections.sectionsForBottomOfDialog,
	
	processRenderedPhotos = DateExportTask.processRenderedPhotos,
	
	supportsIncrementalPublish = true,
	
	canExportVideo = true,
	
	small_icon = 'icon.png'
	
}
