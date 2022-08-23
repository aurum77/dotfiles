local status_ok, nvim_web_devicons = pcall(require, "nvim-web-devicons")

if not status_ok then
	return
end
nvim_web_devicons.set_icon({
	http = {
		icon = "爵",
		color = "#569cd6",
		name = "HTTP",
	},
	httpResult = {
		icon = "爵",
		color = "#569cd6",
		name = "HTTP_Result",
	},
	packer = {
		icon = "",
		color = "#569cd6",
		name = "Packer",
	},
	dapui_scopes = {
		icon = "",
		color = "#569cd6",
		name = "DAP_Scopes",
	},
	dapui_breakpoints = {
		icon = "",
		color = "#569cd6",
		name = "DAP_Breakpoints",
	},
	dapui_stacks = {
		icon = "",
		color = "#569cd6",
		name = "DAP_Stacks",
	},
	dapui_watches = {
		icon = "",
		color = "#569cd6",
		name = "DAP_Watches",
	},
	make = {
		icon = "ﭧ",
		color = "#569cd6",
		name = "Makefile",
	},
})

nvim_web_devicons.setup({})