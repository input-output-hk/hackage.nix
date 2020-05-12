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
    flags = { exe = true; vty = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "h2048"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Javran Cheng";
      maintainer = "Javran.C@gmail.com";
      author = "Javran Cheng";
      homepage = "https://github.com/Javran/h2048";
      url = "";
      synopsis = "a haskell implementation of Game 2048";
      description = "A haskell implementation of Game 2048,\nbased on <https://github.com/gabrielecirulli/2048>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
          ];
        buildable = true;
        };
      exes = {
        "h2048-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            ];
          buildable = if !flags.exe then false else true;
          };
        "h2048-vty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."vty-ui" or (errorHandler.buildDepError "vty-ui"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            ];
          buildable = if !flags.exe || !flags.vty then false else true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }