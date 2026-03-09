local M = {}

M.vault = vim.fn.expand '~/dnd'

function M.open(path)
  return function() vim.cmd('edit ' .. M.vault .. '/' .. path) end
end

function M.new_note(subdir)
  return function()
    local title = vim.fn.input 'Note title: '
    if title == '' then return end
    local filename = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
    vim.cmd('edit ' .. M.vault .. '/' .. subdir .. '/' .. filename .. '.md')
  end
end

function M.switch_to_vault()
  vim.cmd('tcd ' .. M.vault)
  print 'Switched to DnD vault'
end

function M.find_files() require('telescope.builtin').find_files { cwd = M.vault, prompt_title = 'DnD Files' } end

function M.grep() require('telescope.builtin').live_grep { cwd = M.vault, prompt_title = 'DnD Grep' } end

return M
