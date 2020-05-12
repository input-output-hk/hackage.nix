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
      identifier = { name = "Parallel-Arrows-Eden"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Martin Braun";
      author = "";
      homepage = "https://github.com/s4ke/Parrows#readme";
      url = "";
      synopsis = "Eden based backend for @Parallel-Arrows-Definition@.";
      description = "Eden based backend for @Parallel-Arrows-Definition@.\nThis backend works on shared-memory (compile with -parcp) systems or on clusters (only -parmpi was tested).\nFor parallel evaluation on clusters you will have to compile your own Eden GHC (http://www.mathematik.uni-marburg.de/~eden/).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."edenmodules" or (errorHandler.buildDepError "edenmodules"))
          (hsPkgs."Parallel-Arrows-Definition" or (errorHandler.buildDepError "Parallel-Arrows-Definition"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."edenmodules" or (errorHandler.buildDepError "edenmodules"))
            (hsPkgs."Parallel-Arrows-Definition" or (errorHandler.buildDepError "Parallel-Arrows-Definition"))
            (hsPkgs."Parallel-Arrows-BaseSpec" or (errorHandler.buildDepError "Parallel-Arrows-BaseSpec"))
            (hsPkgs."Parallel-Arrows-Eden" or (errorHandler.buildDepError "Parallel-Arrows-Eden"))
            ];
          buildable = true;
          };
        };
      };
    }