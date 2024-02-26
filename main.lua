--This script will run on all levels when mod is active.
--Modding documentation: http://teardowngame.com/modding
--API reference: http://teardowngame.com/modding/api.html

local startTime = 0

function init()
    distance = 0
    startTime = GetTime()
    lastPos = GetPlayerTransform().pos
    end
    
function tick(dt)
    distance = distance + VecLength(VecSub(GetPlayerTransform().pos,lastPos))
    lastPos = GetPlayerTransform().pos
    DebugWatch("Distance Travelled Since Level Load", math.floor(distance*10)/10 .. " Voxels")
    ticktwo(dt)
    tickthree(dt)
end

function ticktwo(dt)
    local elapsedTime = GetTime() - startTime
    DebugWatch("Time Since Loaded", math.floor(elapsedTime * 10) / 10 .. " Seconds")
end

funtion tickthree(dt)
    DebugWatch("Voxels Destroyed Since Level Load", math.floor (destroyed*10)/10 .. " Voxels")
    

function update(dt)
end


function draw(dt)
end


