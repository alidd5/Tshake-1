sudo_tshake = dofile("sudo.lua")
os.execute('cd .. && rm -rf .telegram-cli')
if token and token == "TOKEN" then 
print("\27[1;34m»» Send Your Bot TOKEN \27[m")
local token_send = io.read()
print("DONE")
print("\27[1;34m»» Now Send Sudo ID \27[m")
local sudo_send  = io.read()
print("DONE")
local tsheke_file = io.open("sudo.lua", 'w')
tsheke_file:write("token = '" ..token_send.."'\n\nsudo_add = '"..sudo_send.."'" )
tsheke_file:close()
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
os.execute('./tg -s ./Tshake.lua $@ --bot='..token)
else 
os.execute('cd .. && rm -fr .telegram-cli')
os.execute('cd && rm -fr .telegram-cli')
sudo_tshake = dofile("sudo.lua")
os.execute('./tg -s ./Tshake.lua $@ --bot='..token)
end