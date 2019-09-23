module Day1 exposing (..)

-- EASY


product : List number -> number
product =
    List.foldl (*) 1


pointList =
    [ { x = 1.0, y = 5.0 }, { x = 2.0, y = 6.0 }, { x = 4.0, y = 8.0 } ]


xes : List { a | x : Float } -> List Float
xes =
    List.map .x



-- Eh, I guess you need to add context somehow. Would probably use a record for this to begin with.


type Address
    = Address String Int


type Person
    = Person String Int Address


type alias RAddress =
    { name : String
    , number : Int
    }


type alias RPerson =
    { name : String
    , age : Int
    , address : RAddress
    }



-- MEDIUM


multiply : number -> number -> number
multiply =
    (*)


multiply6 =
    multiply 6


multiply68 =
    multiply6 8


personRecords =
    [ { name = "Jacob Torrång"
      , age = 29
      , address =
            { name = "Lyckevägen"
            , number = 8
            }
      }
    , { name = "Johannes Torrång"
      , age = 12
      , address =
            { name = "Tjolahojsvägen"
            , number = 99
            }
      }
    ]


over16 : List { a | age : Int } -> List { a | age : Int }
over16 =
    List.filter (.age >> (<) 16)



-- HARD


personRecordsAgeMaybe =
    { name = "Santa Claus"
    , age = Nothing
    , address =
        { name = "Santa street"
        , number = 69
        }
    }
        :: List.map (\{ name, age, address } -> { name = name, age = Just age, address = address }) personRecords


over16Nil : List { a | age : Maybe Int } -> List { a | age : Maybe Int }
over16Nil =
    List.filter (\{ age } -> Maybe.withDefault -1 age > 16)
