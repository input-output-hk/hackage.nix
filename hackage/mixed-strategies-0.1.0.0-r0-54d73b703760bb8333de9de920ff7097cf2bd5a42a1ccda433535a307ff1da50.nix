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
      specVersion = "1.8";
      identifier = { name = "mixed-strategies"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "bart@cs.pdx.edu";
      author = "Bart Massey";
      homepage = "http://wiki.cs.pdx.edu/bartforge/oms";
      url = "";
      synopsis = "Find optimal mixed strategies for two-player games";
      description = "A Haskell implementation of the method of\nChapter 6 of The Compleat Strategyst\n(J.D. Williams, McGraw-Hill 1955) for\nfinding optimal mixed strategies for\ntwo-player hidden information games\ngiven a payoff matrix.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."simple-tabular" or (errorHandler.buildDepError "simple-tabular"))
        ];
        buildable = true;
      };
      exes = {
        "oms" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."simple-tabular" or (errorHandler.buildDepError "simple-tabular"))
            (hsPkgs."mixed-strategies" or (errorHandler.buildDepError "mixed-strategies"))
          ];
          buildable = true;
        };
      };
    };
  }