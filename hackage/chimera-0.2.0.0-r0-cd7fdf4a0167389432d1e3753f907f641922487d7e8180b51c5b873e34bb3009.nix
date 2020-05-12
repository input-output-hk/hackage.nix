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
      identifier = { name = "chimera"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Bodigrim";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "https://github.com/Bodigrim/chimera#readme";
      url = "";
      synopsis = "Lazy, infinite streams with O(1) indexing.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        buildable = true;
        };
      exes = {
        "find-foo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chimera" or (errorHandler.buildDepError "chimera"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chimera" or (errorHandler.buildDepError "chimera"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chimera" or (errorHandler.buildDepError "chimera"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            ];
          buildable = true;
          };
        };
      };
    }