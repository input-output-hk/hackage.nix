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
      identifier = { name = "Parallel-Arrows-ParMonad"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Martin Braun";
      author = "";
      homepage = "https://github.com/s4ke/Parrows#readme";
      url = "";
      synopsis = "Par Monad (@monad-par@) based backend for @Parallel-Arrows-Definition@.";
      description = "Par Monad (@monad-par@) based backend for @Parallel-Arrows-Definition@. Use this backend for shared-memory programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Parallel-Arrows-Definition" or (errorHandler.buildDepError "Parallel-Arrows-Definition"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."Parallel-Arrows-BaseSpec" or (errorHandler.buildDepError "Parallel-Arrows-BaseSpec"))
            (hsPkgs."Parallel-Arrows-Definition" or (errorHandler.buildDepError "Parallel-Arrows-Definition"))
            (hsPkgs."Parallel-Arrows-ParMonad" or (errorHandler.buildDepError "Parallel-Arrows-ParMonad"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monad-par" or (errorHandler.buildDepError "monad-par"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }