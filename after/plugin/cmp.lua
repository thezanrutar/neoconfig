local blink = require("blink.cmp")

blink.setup({
	keymap = { preset = "default" },
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},
	completion = {
		documentation = { auto_show = true },
	
	},
	signature = { enabled = true },
  fuzzy = { implementation = "lua" },
})
