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
    flags = { werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "stitch"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© Fraser Murray 2015";
      maintainer = "fraser.m.murray@gmail.com";
      author = "Fraser Murray";
      homepage = "";
      url = "";
      synopsis = "lightweight CSS DSL";
      description = "a tiny css preprocessor dsl for haskell – check out the readme at <https://github.com/intolerable/stitch>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stitch" or (errorHandler.buildDepError "stitch"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."stitch" or (errorHandler.buildDepError "stitch"))
            ];
          buildable = true;
          };
        };
      };
    }