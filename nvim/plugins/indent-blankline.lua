return {
	"lukas-reineke/indent-blankline.nvim",
  lazy = false,
	main = "ibl",
	opts = {
    scope = {
      enabled = false
    },
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
    },
  },
}
