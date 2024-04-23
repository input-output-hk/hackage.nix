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
      identifier = { name = "funnyprint"; version = "0.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Yuriy Pitomets";
      author = "";
      homepage = "https://github.com/Pitometsu/funnyprint#readme";
      url = "";
      synopsis = "funnyPrint function to colorize GHCi output.";
      description = "see FunnyPrint.funnyPrint.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          (hsPkgs."ipprint" or (errorHandler.buildDepError "ipprint"))
          (hsPkgs."posix-escape" or (errorHandler.buildDepError "posix-escape"))
        ];
        buildable = true;
      };
      tests = {
        "funnyprint-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."ipprint" or (errorHandler.buildDepError "ipprint"))
            (hsPkgs."posix-escape" or (errorHandler.buildDepError "posix-escape"))
            (hsPkgs."funnyprint" or (errorHandler.buildDepError "funnyprint"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "funnyprint-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."ipprint" or (errorHandler.buildDepError "ipprint"))
            (hsPkgs."posix-escape" or (errorHandler.buildDepError "posix-escape"))
            (hsPkgs."funnyprint" or (errorHandler.buildDepError "funnyprint"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }