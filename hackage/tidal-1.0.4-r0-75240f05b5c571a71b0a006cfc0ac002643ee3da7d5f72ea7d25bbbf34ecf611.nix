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
      identifier = { name = "tidal"; version = "1.0.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) Tidal contributors, 2018";
      maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Alex McLean";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Pattern language for improvised music";
      description = "Tidal is a domain specific language for live coding pattern.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.4.1")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."microspec" or (errorHandler.buildDepError "microspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."tidal" or (errorHandler.buildDepError "tidal"))
            ];
          buildable = true;
          };
        };
      };
    }