import Data.List
import System.IO

data RPS = Rock | Paper | Scissors 

shoot :: RPS -> RPS -> String

shoot Paper Rock = "Paper beats rock"
shoot Paper Scissors = "Scissors beats Paper"
shoot Rock Paper = "Rock loses to Paper"
shoot Rock Scissors = "Scissors Loses to Rock"
shoot Scissors Rock = "Scissors loses to Rock"
shoot Scissors Paper = "Scissors beats Paper"

shoot _ _ = "Error out of scope of the game"

