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
      specVersion = "2.0";
      identifier = { name = "hpc-codecov"; version = "0.6.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 8c6794b6";
      maintainer = "8c6794b6@gmail.com";
      author = "8c6794b6";
      homepage = "https://github.com/8c6794b6/hpc-codecov#readme";
      url = "";
      synopsis = "Generate reports from hpc data";
      description = "The hpc-codecov package contains an executable and library codes for\ngenerating <https://codecov.io Codeocv> JSON coverage report,\n<https://github.com/linux-test-project/lcov LCOV> tracefile report,\nor <https://cobertura.github.io/cobertura/ Cobertura> XML report\nfrom @.tix@ and @.mix@ files made with\n<https://hackage.haskell.org/package/hpc hpc>.  See the\n<https://github.com/8c6794b6/hpc-codecov#readme README> for more\ninfo.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "hpc-codecov" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hpc-codecov" or (errorHandler.buildDepError "hpc-codecov"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."hpc-codecov" or (errorHandler.buildDepError "hpc-codecov"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }