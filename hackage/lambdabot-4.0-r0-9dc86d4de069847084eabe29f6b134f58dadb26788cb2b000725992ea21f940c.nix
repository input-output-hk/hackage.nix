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
      specVersion = "0";
      identifier = { name = "lambdabot"; version = "4.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "BotPP" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."fps" or (errorHandler.buildDepError "fps"))
            ];
          buildable = true;
          };
        "lambdabot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."fps" or (errorHandler.buildDepError "fps"))
            ];
          buildable = true;
          };
        "hoogle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."fps" or (errorHandler.buildDepError "fps"))
            ];
          buildable = true;
          };
        "djinn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."fps" or (errorHandler.buildDepError "fps"))
            ];
          buildable = true;
          };
        "unlambda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."fps" or (errorHandler.buildDepError "fps"))
            ];
          buildable = true;
          };
        "runplugs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."fps" or (errorHandler.buildDepError "fps"))
            ];
          buildable = true;
          };
        };
      };
    }