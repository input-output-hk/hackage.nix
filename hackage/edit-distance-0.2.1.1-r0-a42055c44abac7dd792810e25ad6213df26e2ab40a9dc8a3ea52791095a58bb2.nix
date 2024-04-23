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
    flags = { tests = false; benchmark = false; splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "edit-distance"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/edit-distance";
      url = "";
      synopsis = "Levenshtein and restricted Damerau-Levenshtein edit distances";
      description = "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "edit-distance-tests" = {
          depends = pkgs.lib.optionals (!!flags.tests) ([
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck" or (errorHandler.buildDepError "test-framework-quickcheck"))
          ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]));
          buildable = if !flags.tests then false else true;
        };
        "edit-distance-benchmark" = {
          depends = pkgs.lib.optionals (!!flags.benchmark) (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]);
          buildable = if !flags.benchmark then false else true;
        };
      };
    };
  }