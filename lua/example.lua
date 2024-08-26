-- [nfnl] Compiled from fnl/example.fnl by https://github.com/Olical/nfnl, do not edit.
local function _f3_b1_a4_bd_f3_b1_a4_8d_f3_b1_a5_a9_f3_b1_a4_bd_f3_b1_a5_94(_f3_b1_a4_bd_f3_b1_a4_b4)
  local _f3_b1_a5_90_f3_b1_a4_87_f3_b1_a5_99 = false
  local i = 1
  local _f3_b1_a4_9f_f3_b1_a4_bd_f3_b1_a4_8d = {100, 20, 5, 2, 1}
  local _f3_b1_a4_9f_f3_b1_a4_bd_f3_b1_a5_94 = {"\243\177\164\132", "\243\177\164\188", "\243\177\164\173", "\243\177\165\174", "\243\177\165\179"}
  while not _f3_b1_a5_90_f3_b1_a4_87_f3_b1_a5_99 do
    if ((_f3_b1_a4_9f_f3_b1_a4_bd_f3_b1_a4_8d)[i] <= _f3_b1_a4_bd_f3_b1_a4_b4) then
      _f3_b1_a5_90_f3_b1_a4_87_f3_b1_a5_99 = true
    else
      i = (i + 1)
    end
  end
  local _f3_b1_a4_bd_f3_b1_a4_bc_f3_b1_a5_99 = math.floor((_f3_b1_a4_bd_f3_b1_a4_b4 / (_f3_b1_a4_9f_f3_b1_a4_bd_f3_b1_a4_8d)[i]))
  local _f3_b1_a4_bd_f3_b1_a5_94 = (_f3_b1_a4_bd_f3_b1_a4_b4 % (_f3_b1_a4_9f_f3_b1_a4_bd_f3_b1_a4_8d)[i])
  local function _2_()
    if (_f3_b1_a4_bd_f3_b1_a4_bc_f3_b1_a5_99 > 1) then
      return _f3_b1_a4_bd_f3_b1_a4_8d_f3_b1_a5_a9_f3_b1_a4_bd_f3_b1_a5_94(_f3_b1_a4_bd_f3_b1_a4_bc_f3_b1_a5_99)
    else
      return ""
    end
  end
  local function _3_()
    if (_f3_b1_a4_bd_f3_b1_a5_94 > (1 - 1)) then
      return _f3_b1_a4_bd_f3_b1_a4_8d_f3_b1_a5_a9_f3_b1_a4_bd_f3_b1_a5_94(_f3_b1_a4_bd_f3_b1_a5_94)
    else
      return ""
    end
  end
  return (_2_() .. (_f3_b1_a4_9f_f3_b1_a4_bd_f3_b1_a5_94)[i] .. _3_())
end
return print(_f3_b1_a4_bd_f3_b1_a4_8d_f3_b1_a5_a9_f3_b1_a4_bd_f3_b1_a5_94(128))
