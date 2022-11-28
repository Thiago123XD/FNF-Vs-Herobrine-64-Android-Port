x = false
local allowCountdown = false
function onUpdate()
    if songName == "heat" and curStep % 8 == 0 then
        objectPlayAnimation('Piglins','Piglins',true)
    end
end
function onStartCountdown()
    if getPropertyFromClass ('PlayState', 'deathCounter') > 0 then
        allowCountdown = true;
    elseif not allowCountdown and not seenCutscene then --Block the first countdown
		if songName == "new world" then
            startVideo('1 Intro');
        elseif songName == "heat" then
            startVideo('2 After Song 1');
        elseif songName == "abyss" then
            startVideo('3 after song 2');
        elseif songName == "hardcore" then
            startVideo('5 Song 3-4');
        end
		allowCountdown = true;
		return Function_Stop;
	end
    if songName == "hardcore" then
        doTweenAlpha('alpha','4thSong/Background',0,140,'linear')
        doTweenAlpha('alpha2','4thSong/MainGround',0,140,'linear')
    end
    return Function_Continue;
end


function onEndSong()
    if x == false and songName == "hardcore" then --Block the first countdown
        startVideo('6 Song 4 Ending Cutscene');
        x = true;
        return Function_Stop;
    end
    if isStoryMode and x == false and songName == "abyss" and score < 95000 and difficulty == 2 and getProperty("ulockedShit") == false then --Block the first countdown
        startVideo('4 After Song 3 Ending 2');
        x = true;
        return Function_Stop;
    elseif isStoryMode and x == false and songName == "abyss" and difficulty < 2 then
        startVideo('4 After Song 3 Ending 1');
        x = true;
        return Function_Stop;
    end
    return Function_Continue;
end