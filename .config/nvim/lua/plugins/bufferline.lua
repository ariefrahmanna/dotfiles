-- Add tabs bufferline
return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'none', -- Change this if you want different numbering
        close_command = 'bdelete! %d', -- Command to close a buffer
        right_mouse_command = 'bdelete! %d', -- Right-click close command
        left_mouse_command = 'buffer %d', -- Left-click switch buffer
        indicator = {
          icon = '▎', -- Indicator symbol
          style = 'icon', -- Indicator style
        },
        buffer_close_icon = '', -- Icon for closing buffer
        modified_icon = '✥', -- Icon for modified buffers
        close_icon = '', -- Close icon
        left_trunc_marker = '', -- Left truncation marker
        right_trunc_marker = '', -- Right truncation marker
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        diagnostics = 'nvim_lsp', -- Enable LSP diagnostics
        diagnostics_update_in_insert = false,
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            padding = 1,
          },
        },
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        always_show_bufferline = true,
        sort_by = 'insert_at_end',
      },
    }
  end,
}
