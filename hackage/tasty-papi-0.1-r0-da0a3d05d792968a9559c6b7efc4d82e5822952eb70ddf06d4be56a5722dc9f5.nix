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
      identifier = { name = "tasty-papi"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2023, Alexey Khudyakov";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://github.com/Shimuuar/tasty-bench";
      url = "";
      synopsis = "Bencmarking using instruction counting";
      description = "Benchmarking framework which uses instruction counters intead of\ntime measurements. Instruction count is only proxy for code\nperformance but unlike time could be measured deterministically.\nPAPI is used in order to access hardware counters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        libs = [ (pkgs."papi" or (errorHandler.sysDepError "papi")) ];
        buildable = true;
        };
      tests = {
        "tasty-papi-run" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-papi" or (errorHandler.buildDepError "tasty-papi"))
            ];
          buildable = true;
          };
        };
      };
    }