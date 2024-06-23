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
      specVersion = "3.6";
      identifier = { name = "grfn"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2024 ThreeEyedGod";
      maintainer = "venkatesh.narayanan@live.in";
      author = "Venkatesh Narayanan";
      homepage = "https://github.com/threeeyedgod/grfn#readme";
      url = "";
      synopsis = "Uniformly-random pre-factored numbers (Kalai)";
      description = "@__grfn__@ is a focused library -- an implementation of Adam Kalai's algorithm \nto get uniform pre-factored numbers. \nSee [README](https://github.com/threeeyedgod/grfn#grfn) for more details.        ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."unamb" or (errorHandler.buildDepError "unamb"))
        ];
        buildable = true;
      };
      exes = {
        "grfn-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grfn" or (errorHandler.buildDepError "grfn"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      tests = {
        "grfn-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grfn" or (errorHandler.buildDepError "grfn"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "grfn-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."grfn" or (errorHandler.buildDepError "grfn"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }