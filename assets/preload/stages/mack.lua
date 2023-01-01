function onCreate()
	makeLuaSprite('lore_broken_bg','boners/lore/lore_broken_bg',-240,-320)
	addLuaSprite('lore_broken_bg',false)
	scaleObject('lore_broken_bg', 5.0, 5.0);

	makeLuaSprite('lore_normal_bg_windowcolor','boners/lore/lore_normal_bg_windowcolor',-240,-320)
	addLuaSprite('lore_normal_bg_windowcolor',false)
	scaleObject('lore_normal_bg_windowcolor', 5.0, 5.0);

	makeLuaSprite('lore_normal_bg_window','boners/lore/lore_normal_bg_window',-240,-320)
	addLuaSprite('lore_normal_bg_window',false)
	scaleObject('lore_broken_bg', 5.0, 5.0);

	setObjectOrder('gfGroup',2)
	setProperty('gfGroup.alpha',0)
end