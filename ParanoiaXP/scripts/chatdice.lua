-- This file is part of the Fantasy Grounds Open Foundation Ruleset project. 
-- For the latest information, see http://www.fantasygrounds.com/
--
-- Copyright 2008 SmiteWorks Ltd.
--
-- This file is provided under the Open Game License version 1.0a
-- Refer to the license.html file for the full license text
--
-- All producers of work derived from this material are advised to
-- familiarize themselves with the license, and to take special
-- care in providing the definition of Product Identity (as specified
-- by the OGL) in their products.
--
-- All material submitted to the Open Foundation Ruleset project must
-- contain this notice in a manner applicable to the source file type.
--
-- Copyright 2007 Joshuha  - Automatic Dice Rolling function

-- Joshuha - Auto Dice Rolling --
function dieCheck(type, bonus, name)
  if ChatManager.control then
    local dice = {};
    table.insert(dice, type);
    ChatManager.control.throwDice("dice", dice, bonus, name);
  end
end

-- Ian M Kirby - Added die roller for multiple dice
function diceCheck(number, type, bonus, name)
  if ChatManager.control then
    local dice = {};
    for i = 1, number, 1 do
      table.insert(dice, type);
    end
    ChatManager.control.throwDice("dice", dice, bonus, name);
  end
end

