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
      identifier = { name = "tidal-parse"; version = "0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "(c) David Ogborn and contributors, 2025";
      maintainer = "David Ogborn <ogbornd@mcmaster.ca>, Alex McLean <alex@slab.org>";
      author = "David Ogborn";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Parser for TidalCycles";
      description = "A parser for TidalCycles, used for example to interpret Tidal in a web browser (via ghcjs)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tidal-core" or (errorHandler.buildDepError "tidal-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskellish" or (errorHandler.buildDepError "haskellish"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.4.1")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tidal-parse" or (errorHandler.buildDepError "tidal-parse"))
            (hsPkgs."tidal-core" or (errorHandler.buildDepError "tidal-core"))
          ];
          buildable = true;
        };
      };
    };
  }