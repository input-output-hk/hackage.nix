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
    flags = { debug = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "tasty-bench-fit"; version = "0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "https://github.com/Bodigrim/tasty-bench-fit";
      url = "";
      synopsis = "Determine time complexity of a given function";
      description = "Benchmark a given function for variable input sizes\nand find out its time complexity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."infinite-list" or (errorHandler.buildDepError "infinite-list"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          (hsPkgs."regression-simple" or (errorHandler.buildDepError "regression-simple"))
          ];
        buildable = true;
        };
      tests = {
        "tasty-bench-fit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty-bench-fit" or (errorHandler.buildDepError "tasty-bench-fit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            ];
          buildable = true;
          };
        };
      };
    }