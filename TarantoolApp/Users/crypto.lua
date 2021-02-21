local base58=require("base58")
local digest=require('digest')
local clock=require('clock')


--Some crypto functions
local Salt=tostring(clock.time64())
function MkSession()
  return base58.encode_base58(digest.sha512(tostring(clock.time64())..Salt))
end
function CryptoPassword(Password)
  return digest.sha512(Password..'Change_me!!!')
end