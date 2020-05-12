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
      identifier = { name = "speculate"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela,  Colin Runciman";
      homepage = "https://github.com/rudymatela/speculate#readme";
      url = "";
      synopsis = "discovery of properties about Haskell functions";
      description = "Speculate automatically discovers laws about Haskell functions.\nGive Speculate a bunch of Haskell functions and it will discover laws like:\n\n* equations, such as @ id x == x @;\n\n* inequalities, such as @ 0 <= x * x @;\n\n* conditional equations, such as @ x \\<= 0  ==\\>  x + abs x == 0 @.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "creason" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "engine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "eval" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "expr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "match" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "misc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "order" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "reason" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "utils" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "plus-abs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        "test-stats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."leancheck" or (errorHandler.buildDepError "leancheck"))
            (hsPkgs."speculate" or (errorHandler.buildDepError "speculate"))
            ];
          buildable = true;
          };
        };
      };
    }