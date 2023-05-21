local myBuffers = require("heirline-config.tabline.buffers")

local FileIcon = myBuffers.FileIcon
local TablineBufnr = myBuffers.TablineBufnr
local TablineFileName = myBuffers.TablineFileName
local TablineFileFlags = myBuffers.TablineFileFlags
local TablineFileNameBlock = myBuffers.TablineFileNameBlock
local TablineCloseButton = myBuffers.TablineCloseButton
local TablineBufferBlock = myBuffers.TablineBufferBlock
local TablineOffset = myBuffers.TabLineOffset
local TabPages = myBuffers.TabPages
local BufferLine = myBuffers.BufferLine

local TabLine = {
  {{ BufferLine, hl = { bg = "#1aFFFF"} }},
}

return TabLine
