local colors = {
	bg = "#111111",
	fg = "#e4e4e4",
	gray = { -- 7,8,9 not used.
	  [0] = 0xAbAbAf, [1] = 0x494949, [2] = 0x666666, [3] = 0xb6b6b5, [4] = 0x7c8c95,
	  [5] = 0x8c8c8c, [6] = 0xa0a0a0, [7] = 0x415062, [8] = 0x282828, [9] = 0xf0f6fc
  },
	green = {--original colour green = "#97BC62", [green[7] only used]
	  [0] = 0x04260f, [1] = 0x033a16, [2] = 0x0f5323, [3] = 0x196c2e, [4] = 0x238636,
	  [5] = 0x2ea043, [6] = 0x3fb950, [7] = 0x56d364, [8] = 0x7ee787, [9] = 0xaff5b4
  },
	blue = {
	  [0] = 0x719597, [1] = 0x5a6378, [2] = 0x0d419d, [3] = 0x1158c7, [4] = 0x1f6feb,
	  [5] = 0x388bfd, [6] = 0x58a6ff, [7] = 0x569CD6, [8] = 0x96a6c8, [9] = 0x88afa2
  },
	purple = {
	 [0] = 0x271052, [1] = 0x3c1e70, [2] = 0x553098, [3] = 0x6e40c9, [4] = 0x8957e5,
	 [5] = 0xa371f7, [6] = 0xB180D7, [7] = 0xd2a8ff, [8] = 0xe2c5ff, [9] = 0xeddeff
  },
	red = {
	  [0] = 0x490202, [1] = 0x67060c, [2] = 0x8e1519, [3] = 0xb62324, [4] = 0xda3633,
	  [5] = 0xf85149, [6] = 0xff7b72, [7] = 0xffa198, [8] = 0xffc1ba, [9] = 0xffdcd7
  },
	orange = {
	  [0] = 0x3d1300, [1] = 0x6A2835, [2] = 0x762d0a, [3] = 0xFFC799, [4] = 0xA47663,
	  [5] = 0xdb6d28, [6] = 0xe67300, [7] = 0xffa657, [8] = 0xffc680, [9] = 0xffdfb6
  },
	yellow = {
	  [0] = 0x341a00, [1] = 0x4b2900, [2] = 0x693e00, [3] = 0x845306, [4] = 0x9e6a03,
	  [5] = 0xbb8009, [6] = 0xd29922, [7] = 0xFAC03B, [8] = 0xf2cc60, [9] = 0xf8e3a1
  },
  git = {
	DiffAdd = "#294841",
	DiffDelete = "#6A2835",
	DiffChange = "#49423C",
	DiffText = "#9A6F43",
  },
  gitSigns ={
	add = "#238636",
	change = "#e67300",
	delete = "#da3633",
  },
}

return colors
