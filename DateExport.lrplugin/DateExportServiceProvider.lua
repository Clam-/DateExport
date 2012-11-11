--[[----------------------------------------------------------------------------

DateExportProvider.lua
Based on FtpUploadExportServiceProvider.lua

------------------------------------------------------------------------------]]

-- 
require 'DateExportDialogSections'
require 'DateExportTask'
local LrDate = import 'LrDate'

local curYear, curMonth, curDay, curHour, curMinute, curSecond = LrDate.timestampToComponents(LrDate.currentTime())

--============================================================================--

return {
	
	hideSections = { 'exportLocation' },

	allowFileFormats = nil, -- nil equates to all available formats
	
	allowColorSpaces = nil, -- nil equates to all color spaces

	exportPresetFields = {
		{ key = 'destPath', default = nil },
		{ key = 'dateFormat', default = '' },
		{ key = 'timeSource', default = 'metadata' },
		{ key = 'timeMissing', default = 'unix' },
		{ key = 'timeYear', default = curYear },
		{ key = 'timeMonth', default = curMonth },
		{ key = 'timeDay', default = curDay },
		{ key = 'timeHour', default = curHour },
		{ key = 'timeMinute', default = curMinute },
		{ key = 'timeSecond', default = curSecond },
	},

	startDialog = DateExportDialogSections.startDialog,
	sectionsForBottomOfDialog = DateExportDialogSections.sectionsForBottomOfDialog,
	
	processRenderedPhotos = DateExportTask.processRenderedPhotos,
	
	supportsIncrementalPublish = true,
	
	canExportVideo = true,
	
	small_icon = 'icon.png'
	
}
