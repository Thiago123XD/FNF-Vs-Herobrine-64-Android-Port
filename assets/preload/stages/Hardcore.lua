function onCreate()
    makeAnimatedLuaSprite('4thSong/Background2','4thSong/Background2',0,0)
    addLuaSprite('4thSong/Background2',false)
    makeAnimatedLuaSprite('4thSong/MainGround2','4thSong/Main Ground2',0,0)
    addLuaSprite('4thSong/MainGround2',false)

    makeAnimatedLuaSprite('4thSong/Background','4thSong/Background',0,0)
    addLuaSprite('4thSong/Background',false)

    makeAnimatedLuaSprite('4thSong/MainGround','4thSong/Main Ground',0,0)
    addLuaSprite('4thSong/MainGround',false)

    close(true)
end
function onStartCountdown()
    doTweenAlpha('alpha','4thSong/Background',0,47,'linear')
    doTweenAlpha('alpha2','4thSong/MainGround',0,47,'linear')
end