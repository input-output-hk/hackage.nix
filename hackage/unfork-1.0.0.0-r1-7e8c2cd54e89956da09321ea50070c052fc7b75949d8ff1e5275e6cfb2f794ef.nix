{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "unfork"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "2022 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/unfork";
      url = "";
      synopsis = "Make any action thread safe";
      description = "“Unfork” is the opposite of “fork”; whereas forking allows things to run concurrently, unforking prevents things from running concurrently. Use one of the functions in the \"Unfork\" module when you have an action that will be used by concurrent threads but needs to run serially.\n\nA typical use case is a multi-threaded program that writes log messages. If threads use @putStrLn@ directly, the strings may be interleaved in the combined output. Instead, create an unforked version of @putStrLn@:\n\n> import Unfork\n>\n> main :: IO ()\n> main =\n>     unforkAsyncIO_ putStrLn \\putStrLn' ->\n>         _ -- Within this continuation, use\n>           -- putStrLn' instead of putStrLn\n\nThe new @putStrLn'@ function writes to a queue. A separate thread reads from the queue and performs the actions, thus ensuring that the actions are all performed in one linear sequence. The main thread returns after the continuation has returned and the queue is empty. If an exception is raised in either thread, both threads halt and the exception is re-raised in the main thread.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }