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
      specVersion = "2.0";
      identifier = { name = "tidal-core"; version = "1.10.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) Alex McLean and other contributors, 2025";
      maintainer = "Alex McLean <alex@slab.org>, Matthew Kaney, Martin Gius";
      author = "";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Core pattern library for TidalCycles, a pattern language for improvised music";
      description = "Tidal is a domain specific language for live coding patterns. This is a pre-release ahead of version 1.10, which will become a dependency of the main tidal package, with the same version number.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tidal-core" or (errorHandler.buildDepError "tidal-core"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }