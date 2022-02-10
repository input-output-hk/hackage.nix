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
      specVersion = "1.10";
      identifier = { name = "ascii-progress"; version = "0.1.0.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-ascii-progress";
      url = "";
      synopsis = "A simple progress bar for the console.";
      description = "A simple Haskell progress bar for the console. Heavily borrows from TJ\nHolowaychuk's Node.JS project <https://github.com/tj/node-progress progress>\n@\nimport Control.Concurrent (threadDelay)\nimport Control.Monad (unless)\nimport System.Console.AsciiProgress (Options(..), isComplete, def,\nnewProgressBar, tick)\nmain :: IO ()\nmain = do\npg <- newProgressBar def { pgWidth = 50 }\nloop pg\nwhere\nloop pg = do\nb <- isComplete pg\nunless b $ do\nthreadDelay $ 200 * 1000\ntick pg\nloop pg\n@\n<https://github.com/yamadapc/haskell-ascii-progress github>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }