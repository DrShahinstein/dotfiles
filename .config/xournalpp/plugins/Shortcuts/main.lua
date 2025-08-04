function switchToPen()
	app.uiAction({ ["action"] = "ACTION_TOOL_PEN" })
end

function switchToEraser()
	app.uiAction({ ["action"] = "ACTION_TOOL_ERASER" })
end

function initUi()
	app.registerUi({ ["menu"] = "Switch to Pen", ["callback"] = "switchToPen", ["accelerator"] = "p" })
	app.registerUi({ ["menu"] = "Switch to Eraser", ["callback"] = "switchToEraser", ["accelerator"] = "e" })
end
