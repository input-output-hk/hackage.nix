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
      specVersion = "3.0";
      identifier = { name = "typist"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "goosedb@yandex.ru";
      author = "Danil Berestov";
      homepage = "";
      url = "";
      synopsis = "Typelevel printf";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
        ];
        buildable = true;
      };
      tests = {
        "typist-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typist" or (errorHandler.buildDepError "typist"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "typist-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typist" or (errorHandler.buildDepError "typist"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          ];
          buildable = true;
        };
      };
    };
  }