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
      specVersion = "1.18";
      identifier = { name = "ueberzug"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2022 Tsui Yik Ching";
      maintainer = "tsuiyikching@protonmail.com";
      author = "Tsui Yik Ching";
      homepage = "https://github.com/akazukin5151/ueberzug-hs";
      url = "";
      synopsis = "Haskell bindings for ueberzug to display images in the terminal";
      description = "This draws the example image for 2 seconds, then clear it and wait for 1 second before exiting\n\n\n> import Control.Concurrent\n> import Graphics.Ueberzug\n>\n> main = do\n>   ub <- newUeberzug\n>   -- assert it suceeded\n>   Right () <-\n>     draw ub $ defaultUbConf\n>       { identifier = \"75933779_p0\"\n>       , path = \"./test/75933779_p0.jpg\"\n>       , x = 10\n>       , y = 2\n>       , width = Just 10\n>       , height = Just 10\n>       , scaler = Just FitContain\n>       }\n>   threadDelay 2000000\n>\n>   clear ub \"75933779_p0\"\n>   threadDelay 1000000\n\n\nSee the README for more info";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ueberzug" or (errorHandler.buildDepError "ueberzug"))
          ];
          buildable = true;
        };
      };
    };
  }