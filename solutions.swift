// 1.6.1 Creating smarter while loops


func solve() {
    moveForward()
    
    if isOnOpenSwitch {
        while isOnOpenSwitch{
            moveForward()
            if isOnClosedSwitch{
                toggleSwitch()
            }
        }
    } else if isOnClosedSwitch{
        while isOnClosedSwitch{
            toggleSwitch()
            if isOnOpenSwitch{
                moveForward()
            }
        }
    } else {
        moveForward()
    }
}

for i in 1...4 {
    solve()
}

///////
////// Newer solution ///
///

while !isBlocked{
    if isOnClosedSwitch{
        toggleSwitch()
    }
    moveForward()
}
///////////////////////////////////////////
// 1.6.3: Choosing the correct tool
// noob: 

func turnAndCollectGem() {
    moveForward()
    turnLeft()
    moveForward()
    collectGem()
    turnRight()
}

for i in 1...6{
    turnAndCollectGem()
}

///////////////////////////////////////////
// Basic hej:

var gems = 0
while gems < 6 {
    moveForward()
    if isOnGem{
        collectGem()
        gems += 1
    }
    if isBlocked && isBlockedLeft{
        turnRight()
    }
    else if isBlocked && isBlockedRight{
        turnLeft()
    }
}


///////////////////////////////////////////
// Hej:


(1...12).forEach{
    moveForward()
    if $0 % 2 == 0{
        collectGem(); turnRight()
    }
    else {
        turnLeft()
    }
}

///////////////////////////////////////////
// 1.6.4 Four by four
// noob:

while true {
    moveForward()
    if isOnClosedSwitch {
        toggleSwitch()
        turnRight()
    }
    else if isOnOpenSwitch{
        turnRight()
    }
    if isBlocked {
        break
    }
    
}


///////////////////////////////////////////

// Better noob

  while !isBlocked{
        moveForward()
        if isOnClosedSwitch{
            toggleSwitch()
            turnRight()
        } else if isOnOpenSwitch{
            turnRight()
        }
    }





///////////////////////////////////////////

// junior dev

for tile in 1...12{
    moveForward()
    if [3, 6, 9].contains(tile){
        turnRight()
    }
    if isOnClosedSwitch{
              toggleSwitch()
          }
}
//////////////////////////////////////////

// Hej ////

for tile in 1...12{
    moveForward()
    tile % 3 == 0 ? turnRight() : ()
    isOnClosedSwitch ?  toggleSwitch() : ()
}

///////////////////////////////////////

// Super Hej

(1...1).forEach{
    moveForward()
    $0.isMultiple(of: 3) ? turnRight() : ()
    isOnClosedSwitch ?  toggleSwitch() : ()
}

//////////////////////////////////////////

// 1.6.5 Turned around
// Basic //

func pattern(){
    moveForward()
    turnLeft()
    collectGem()
    moveForward()
    collectGem()
    turnLeft()
    moveForward()
    turnRight()
}

for _ in 1...4 {
    pattern()
}

/////////////////////////////
// better 


var steps = 0 

    while steps < 13 {
        moveForward()
        steps += 1
        if isBlocked{
            turnLeft()
            collectGem()
        }
        if steps == 7{
            turnRight()
        }
    }

//////////////////////////////
// Hej //

for k in 1...13 {
    moveForward()
    if isBlocked{
        turnLeft()
        collectGem()
            }
    k == 7 ?  turnRight() : ()
    
}

//////////////////////////////
// 1.6.6 Land of Bounty 
// Oh no 

func pat(){
    while !isBlocked{
    if isOnGem  {
        collectGem()
        moveForward() 
    } else if isOnOpenSwitch{
        moveForward()
        } else if isOnClosedSwitch{
            toggleSwitch()
            moveForward()
        }
    }
}

func steering(){
    turnRight()
    moveForward()
}
    
moveForward()
pat()
steering()
steering()
pat()
turnLeft()
moveForward()
turnLeft()
moveForward()
pat()


////////////////////////////////
// Better 

func pat(){
    while !isBlocked{
        moveForward()
        isOnClosedSwitch ? toggleSwitch() : ()
        isOnGem ? collectGem() : ()
    }
}

pat() 
turnRight()
moveForward()
turnRight()
pat()
turnLeft()
moveForward()
turnLeft()
pat()

//////////////////////////////////////
/// Hej ////


var gems = 0
while !isBlocked{
    moveForward()
    if isOnClosedSwitch { toggleSwitch() }
    if isOnGem{ collectGem(); gems += 1; }
    
    if isBlocked && isBlockedRight{
            break
        }
    
    else if isBlocked && gems < 1 {
        turnRight()
        moveForward()
        turnRight()
    }
    else if isBlocked && gems > 1 {
        turnLeft()
        moveForward()
        turnLeft()
    }
     
}

//////////////////////////////////////////

// 1.6.7 Nesting loops
// Oh no

while !isBlocked {
    while !isBlocked{
        moveForward()
    }
    if isOnGem{
        turnLeft()
        collectGem()
    }
}


//// better

while !isBlocked {
    while !isOnGem{
        moveForward()
    }
    if isOnGem{
        turnLeft()
        collectGem()
    }
}


//////////////////////////////////////////

// 1.6.8 Nesting loops
// Oh no

while !isBlocked{
    while !isBlocked{
        moveForward()
        if isBlocked{
            turnRight()
        }
    }
    moveForward()
}

toggleSwitch()


///// better



while !isBlocked{
    moveForward()
    if isBlocked{
        turnRight()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        break
    }
}

//////////////////////////////// Or

while !isOnClosedSwitch{
    moveForward()
    if isBlocked{
        turnRight()
    }
}
toggleSwitch()

//////////////////////////////// Or

while !isOnClosedSwitch{
    moveForward()
    while isBlocked && !isBlockedRight{
        turnRight()
    }
}
toggleSwitch()

////////////////////////////////
/// Hej ///

while !isOnClosedSwitch{
    isBlocked ? turnRight() : moveForward()
} ; toggleSwitch()




////////////////////////////////////
/// 1.6.9 You're always right
///// Noob


    while !isBlocked{
        moveForward()
        if isOnClosedSwitch{
            toggleSwitch()
        } else if isOnGem{
            collectGem()
        } else if isBlocked{
            turnRight()
        }
    }


///////////// Noober


for k in 1...27{
    moveForward()
   if isOnClosedSwitch{
    toggleSwitch()
   }
    else if isOnGem{
        collectGem()
    }
    else if isBlocked{
        turnRight()
    }
}


//////////////
// Hej ///

while !isOnGem{
    isOnClosedSwitch ? toggleSwitch() : moveForward()
    isBlocked ? turnRight() : ()
}
collectGem()


/////////////





