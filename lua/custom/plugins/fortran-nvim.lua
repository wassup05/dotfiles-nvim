return {
	"wassup05/fortran.nvim",
	name = "fortran",
	dev = true,
	lazy = true,
	ft = "fortran",
	opts = {
		server_opts = {
			path = "fortls",
		},

		formatter_opts = {
			formatter_args = {
				"--indent",
				"2",
				"--case",
				"1",
				"1",
				"1",
				"1",
			},
		},
	},
}
