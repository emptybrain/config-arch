local status_ok, term = pcall(require, "toggleterm")
if status_ok then
  term.setup("toggleterm",
    {
      size = 10,
      shading_factor = 2,
      direction = "horizontal",
      float_opts = {
        border = "flat",
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })
end
