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
      identifier = { name = "tidal"; version = "0.9.8"; };
      license = "GPL-3.0-only";
      copyright = "(c) Tidal contributors, 2017";
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
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.4.1")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tidal" or (errorHandler.buildDepError "tidal"))
            ];
          buildable = true;
          };
        };
      };
    }