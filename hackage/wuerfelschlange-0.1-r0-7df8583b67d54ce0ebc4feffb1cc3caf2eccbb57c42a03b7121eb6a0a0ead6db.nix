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
    flags = { buildgraph = true; buildmatrix = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "wuerfelschlange"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.henning-thielemann.de/wuerfelschlange/";
      url = "";
      synopsis = "Code for the dice chain problem";
      description = "Code for the dice chain problem\n<https://de.wikipedia.org/wiki/Würfelschlange>.\nIt is similar to the Kruskal Count.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wuerfelschlange-graph" = {
          depends = pkgs.lib.optionals (flags.buildgraph) [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildgraph then true else false;
        };
        "wuerfelschlange-matrix" = {
          depends = pkgs.lib.optionals (flags.buildmatrix) [
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildmatrix then true else false;
        };
      };
    };
  }