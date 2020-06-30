local t = require 'spec/test'

t.setup()
t.command('Luapad')
t.command('only')

t.set_lines(0,0, [[
while true do
  print('wow')
end
]])
assert(t.get_virtual_text(1)[1][1]:match('wow'))
assert(t.nvim('get_var', 'luapad__status') == 'timeout')

t.finish()