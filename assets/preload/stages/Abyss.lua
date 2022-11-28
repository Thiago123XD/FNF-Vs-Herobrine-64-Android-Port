a = -1;
function onCreate()
    makeLuaSprite('background frfr','3rdSong/background frfr',0,0)
    setScrollFactor('background frfr',0.85,0.85)
    addLuaSprite('background frfr')
    makeLuaSprite('Background','3rdSong/Background',0,0)
    setScrollFactor('Background',0.75,0.75)
    addLuaSprite('Background')
    makeLuaSprite('Main Ground','3rdSong/Main Ground',0,0)
    addLuaSprite('Main Ground')

    close(true)
end