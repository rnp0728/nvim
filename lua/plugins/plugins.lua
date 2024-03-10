return {
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },
  {
    "mistricky/codesnap.nvim",
    lazy = "true",
    build = "make",
    cmd = "CodeSnapPreviewOn",
    opts = {
      mac_window_bar = true, -- (Optional) MacOS style title bar switch
      opacity = true, -- (Optional) The code snap has some opacity by default, set it to false for 100% opacity
      watermark = "rnp", -- (Optional) you can custom your own watermark, but if you don't like it, just set it to ""
      preview_title = "CodeSnap.nvim", -- (Optional) preview page title
      editor_font_family = "CaskaydiaCove Nerd Font", -- (Optional) preview code font family
      watermark_font_family = "Pacifico", -- (Optional) watermark font family
    },
    config = function(_, opts)
      require("codesnap").setup(opts)
    end,
  },
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup({
        -- Configuration here, or leave empty to use defaults
        font = "CaskaydiaCove Nerd Font Mono=34;Noto Color Emoji=34",
        theme = "Dracula",
        background = "#94E2D5",
        window_title = function()
          return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
        end,
      })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
      {
        "<c-\\>",
        ":ToggleTerm direction='float' terminal path=%:p:h:<cr>",
        desc = "ToggleTerm",
      },
    },
  },
}
