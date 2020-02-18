{-        _                ___       _.--.
    \`.|\..----...-'`   `-._.-'_.-'`
    /  ' `         ,       __.--'
    )/' _/     \   `-_,   /
    `-'" `"\_  ,_.-;_.-\_ ',     
        _.-'_./   {_.'   ; /
       {_.-``-'         {_/


   _____      _      _____ _                 _       _             
  / ____|    | |    / ____(_)               | |     | |            
 | |     __ _| |_  | (___  _ _ __ ___  _   _| | __ _| |_ ___  _ __ 
 | |    / _` | __|  \___ \| | '_ ` _ \| | | | |/ _` | __/ _ \| '__|
 | |___| (_| | |_   ____) | | | | | | | |_| | | (_| | || (_) | |_  
  \_____\__,_|\__| |_____/|_|_| |_| |_|\__,_|_|\__,_|\__\___/|_(_) 
                                                                   
-}

module Main where
import System.IO
import Data.Char

main :: IO ()
main = do
  putStrLn "You are a cat. What is your stupid cat name?"
  catName <- getLine
  putStr "Your stupid cat name is "
  putStr catName
  putStrLn ". You see a BIRD, a YARN ball, and a helpless GLASS, sitting at the edge of a table. Who is your prey?"
  attackPrey
  _ <- getLine
  putStrLn "You-- of course-- require attention.  You are an asshole cat.  There are many ways for you to do this.  Do you YOWL as though you are extreme pain?  How about bust through the closed bedroom door, like you're apart of the SWAT team?  Maybe KNOCKing over every object you can find is more your style?"
  attentionRequire
  _ <- getLine
  putStrLn "All this commotion has made you tired.  It is time for a nap.  Tell me where is your favorite napping place?  Is it the WINDOW so you can dream of bird murder?  Creatures LAP?  Or what about in the kitchen CABINET?"
  restUp
  _ <- getLine
  putStrLn "You are now a hungry creature.  You dreamt of delicious bugs to hunt so you are in need of your food.  Try to JUMP up on the counter to get to your food bowl."
  _ <- getLine
  bool1 <- randomBool
  if bool1
    then putStrLn "Congratulations.  You made it.  You successfully jumped on the counter like a normal cat should.  That's your thing."
    else putStrLn "You fell.  You did not make it onto the counter and your creature is laughing at you.  You try to play it cool.  It didn't happen.  You simply decided you wanted to lay down instead.  Good save, idiot."
  _ <-getLine
  putStrLn "Your day is done.  You have successfully been a cat.  Even though you can be a rambunctious demon you are still deeply loved by the ones around you.  Cherish each and every pet, play and definitely cherish your dumb cat days.  You rest beside your creature now.  Purring as they snore loudly.  You are a fantastic little cat."
  putStrLn "THE END"
  _ <-getLine
  putStrLn "... FUR NOW!"



randomBool :: IO Bool
randomBool = do 
  handle <- openBinaryFile "/dev/random" ReadMode
  randomChar <-hGetChar handle
  hClose handle
  pure (even (ord randomChar))




  


attackPrey :: IO ()
attackPrey = do
  prey <- getLine
  case prey of
    "bird" -> putStrLn "You run into a glass door.  The only thing that is preventing you for catching those damn bastard birds. You're a fucking moron for forgetting."
    "yarn" -> putStrLn "You claw at the yarn, it tries to escape but you grasp the string with your claws."
    "glass" -> putStrLn "You tip the glass over. It breaks into a lot of tiny pieces. Nice."
    _ -> do
      putStrLn "THAT WAS NOT YOUR PREY. FOOL. YOU GET NOTHING."
      attackPrey


attentionRequire :: IO ()
attentionRequire = do 
  require <- getLine
  case require of
    "yowl" -> putStrLn "The classic approach.  You scream and holler like you're in dire need of medical attention.  The creature who houses you expectedly exits their room to find you.  You plop your fat useless body onto the floor and give a friendly chirp.  Got 'em."
    "swat" -> putStrLn "You have nothing to lose.  Your head is empty and your body is 80% blubber.  Good choice.  You start in a crouch and then leap towards the door full force.  The door swings open and the ugly creature who houses you yells.  Likely because of how awesome and powerful you are."
    "knock"-> putStrLn "You.  Let.  Loose.  All the rage of every war could not compare to the disaster you can cause.  You knock over so many precious belongings and the house fills with the joys of chaos.  The creature who houses you comes out with their face red.  You flop on the floor to reveal your belly.  Let the petting begin."
    _ -> do
      putStrLn "What did you even do?  Nothing happened?  No attention for you."
      attentionRequire


restUp :: IO ()
restUp = do
  up <- getLine
  case up of
   "window" -> putStrLn "Fair choice.  Napping at the window so you feel the warmth of the glowing sky ball and watching the birds live...  for now.  You get to nap for three hours."
   "lap" -> putStrLn "You nap on your creature's lap.  It is pretty warm and has a friendly thing attached to it.  They might give you a few pets as you slumber.  You get to nap for one hour.  The dumb creature wakes you up to go into the white piss room."
   "cabinet" -> putStrLn "The cabinet is snug.  The darkness is very good and grants you safety in the small space.  No one to bother you.  Your fat cat body sits perfectly in a shiny pot.  You only awake because your creature eventually opens the cabinet to use the pot you sat in.  You got a good two hour nap."
   _ -> do
    putStrLn "How could you possibly fail at taking a nap?  Where even are you anymore?  You broke the game!"
    restUp








