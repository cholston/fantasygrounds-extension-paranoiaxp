-- This file is provided under the Open Game License version 1.0a
-- For more information on OGL and related issues, see 
--   http://www.wizards.com/d20
--
-- For information on the Fantasy Grounds d20 Ruleset licensing and
-- the OGL license text, see the d20 ruleset license in the program
-- options.
--
-- All producers of work derived from this definition are adviced to
-- familiarize themselves with the above licenses, and to take special
-- care in providing the definition of Product Identity (as specified
-- by the OGL) in their products.
--
-- Copyright 2007 Toadwart/Kenshin - Add portrait for combat tracker etc.

local portraitwidget;

function onInit()
  if window.getDatabaseNode() then
    if window.getDatabaseNode().getName() then
      -- small portrait
      portraitwidget = window.PortraitFrame.addBitmapWidget("portrait_" .. window.getDatabaseNode().getName().. "_token");
      
      -- full-sized portrait
      -- portraitwidget = window.PortraitFrame.addBitmapWidget("portrait_" .. window.getDatabaseNode().getName().. "_charlist");
    end
  end 
end

function onDrag(button, x, y, dragdata)
	dragdata.setType("playercharacter");
	dragdata.setTokenData("portrait_" .. window.getDatabaseNode().getName().. "_token");
	dragdata.setDatabaseNode(window.getDatabaseNode());
	dragdata.setStringData(window.getDatabaseNode().getName());
	
	local base = dragdata.createBaseData();
   base.setType("token");
	base.setTokenData("portrait_" .. window.getDatabaseNode().getName() .. "_token");
   
   return dragdata;
end
