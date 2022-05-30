function onCreatePost()
	--disable vanilla stuff
	setProperty('scoreTxt.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)

	--things
	makeLuaText('misses', 'Misses: ' .. getProperty('songMisses'), 200, 0, 620);
	setTextSize('misses', 20)
	setTextAlignment('misses', 'left')
	setProperty('misses.x', 20)
	addLuaText('misses');

	makeLuaText('rating', 'Rating: ' .. getProperty('ratingName'), 600, 0, 680);
	setTextAlignment('rating', 'left')
	setProperty('rating.x', 20)
	addLuaText('rating');
	setTextSize('rating', 20)

	makeLuaText('score', 'Accuracy: ' .. score, 200, 0, 650);
	setTextAlignment('score', 'left')
	setProperty('score.x', 20)
	addLuaText('score');
	setTextAlignment('score', 'left')
	setTextSize('score', 20)

	makeLuaText('songWM', ' ' .. (songName), 1250, 0, 600);
	setTextSize('songWM', 20)
	addLuaText('songWM');
	setTextAlignment('songWM', 'center')
	
	setTextString('scoreTxt', 'Rating: ' .. getProperty(rating))
end

function onRecalculateRating()
	setTextString('misses', 'Misses: ' .. getProperty('songMisses'));
	setTextString('rating', 'Rating: ' .. getProperty('ratingName'));
	setTextString('score', 'Accuracy: ' .. score);
end

function onUpdatePost()
	--icons and time
	setProperty('iconP1.x', screenWidth - 430)
	setProperty('iconP2.x', 285)
	setProperty('timeTxt.y', 672)
end