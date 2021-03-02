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
    flags = { development = false; gpu = true; };
    package = {
      specVersion = "2.0";
      identifier = {
        name = "accelerate-kullback-liebler";
        version = "0.1.1.0";
        };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Kullback-Liebler divergence";
      description = "Kullback-Liebler divergence using accelerate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
          ];
        buildable = true;
        };
      sublibs = {
        "accelerate-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mwc-random-accelerate" or (errorHandler.buildDepError "mwc-random-accelerate"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."accelerate-kullback-liebler" or (errorHandler.buildDepError "accelerate-kullback-liebler"))
            ];
          buildable = true;
          };
        };
      tests = {
        "accelerate-kullback-liebler-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate-kullback-liebler" or (errorHandler.buildDepError "accelerate-kullback-liebler"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
            (hsPkgs."accelerate-kullback-liebler".components.sublibs.accelerate-test or (errorHandler.buildDepError "accelerate-kullback-liebler:accelerate-test"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            ] ++ (pkgs.lib).optional (flags.gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"));
          buildable = true;
          };
        };
      benchmarks = {
        "accelerate-kullback-liebler-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."accelerate-kullback-liebler" or (errorHandler.buildDepError "accelerate-kullback-liebler"))
            (hsPkgs."accelerate-kullback-liebler".components.sublibs.accelerate-test or (errorHandler.buildDepError "accelerate-kullback-liebler:accelerate-test"))
            (hsPkgs."accelerate-llvm-native" or (errorHandler.buildDepError "accelerate-llvm-native"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ] ++ (pkgs.lib).optional (flags.gpu) (hsPkgs."accelerate-llvm-ptx" or (errorHandler.buildDepError "accelerate-llvm-ptx"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }