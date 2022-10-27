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
      specVersion = "1.12";
      identifier = { name = "LPPaver"; version = "0.0.3.1"; };
      license = "MPL-2.0";
      copyright = "MPL-2.0";
      maintainer = "rasheeja@aston.ac.uk";
      author = "Junaid Rasheed";
      homepage = "https://github.com/rasheedja/LPPaver#readme";
      url = "";
      synopsis = "An automated prover targeting problems that involve nonlinear real arithmetic";
      description = "Please see the README on GitHub at <https://github.com/rasheedja/LPPaver#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
          (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
          (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
          (hsPkgs."simplex-method" or (errorHandler.buildDepError "simplex-method"))
          ];
        buildable = true;
        };
      exes = {
        "lppaver" = {
          depends = [
            (hsPkgs."LPPaver" or (errorHandler.buildDepError "LPPaver"))
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
            (hsPkgs."simplex-method" or (errorHandler.buildDepError "simplex-method"))
            ];
          buildable = true;
          };
        };
      tests = {
        "LPPaver-test" = {
          depends = [
            (hsPkgs."LPPaver" or (errorHandler.buildDepError "LPPaver"))
            (hsPkgs."PropaFP" or (errorHandler.buildDepError "PropaFP"))
            (hsPkgs."aern2-mfun" or (errorHandler.buildDepError "aern2-mfun"))
            (hsPkgs."aern2-mp" or (errorHandler.buildDepError "aern2-mp"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."collect-errors" or (errorHandler.buildDepError "collect-errors"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mixed-types-num" or (errorHandler.buildDepError "mixed-types-num"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."pqueue" or (errorHandler.buildDepError "pqueue"))
            (hsPkgs."simplex-method" or (errorHandler.buildDepError "simplex-method"))
            ];
          buildable = true;
          };
        };
      };
    }