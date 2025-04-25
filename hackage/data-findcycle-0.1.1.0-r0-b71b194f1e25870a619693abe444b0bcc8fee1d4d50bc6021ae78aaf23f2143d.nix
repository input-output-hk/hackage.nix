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
      identifier = { name = "data-findcycle"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2025 Florian Ragwitz";
      maintainer = "florian.ragwitz@gmail.com";
      author = "Florian Ragwitz";
      homepage = "https://github.com/rafl/data-findcycle";
      url = "";
      synopsis = "Find cycles in periodic functions (and lists)";
      description = "Any function @f :: a -> a@ where the type @a@ has finitely many values\neventually has to be cyclic when iterated from some initial @a@.\n\nThis module provides a number of common algorithms and utilities to identify\nand work with such cycles.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10.1") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        buildable = true;
      };
      tests = {
        "data-findcycle-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-findcycle" or (errorHandler.buildDepError "data-findcycle"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "data-findcycle-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-findcycle" or (errorHandler.buildDepError "data-findcycle"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }