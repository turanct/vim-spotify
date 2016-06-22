function! spotify#setVolume(volume)
    let _ = system('osascript -e "set volume output volume ' . a:volume . '"')
endfunction

function! spotify#getVolume()
    let volume = system('osascript -e "output volume of (get volume settings)"')

    return volume
endfunction

function! spotify#volumeUp()
    let volume = spotify#getVolume()
    call spotify#setVolume((volume + 10))
endfunction

function! spotify#volumeDown()
    let volume = spotify#getVolume()
    call spotify#setVolume((volume - 10))
endfunction

function! spotify#togglePlayPause()
    let _ = system('osascript -e "tell application \"Spotify\" to playpause"')
endfunction

function! spotify#nextTrack()
    let _ = system('osascript -e "tell application \"Spotify\" to next track"')
endfunction
