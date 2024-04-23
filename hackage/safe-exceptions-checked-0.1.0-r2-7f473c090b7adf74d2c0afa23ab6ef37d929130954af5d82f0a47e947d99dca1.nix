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
      identifier = { name = "safe-exceptions-checked"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mitchell Rosen";
      maintainer = "Mitchell Rosen";
      author = "Edsko de Vries,\nAdam Gundry,\nMitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/safe-exceptions-checked#readme";
      url = "";
      synopsis = "Safe, checked exceptions";
      description = "Machinery for throwing and catching both pure and impure synchronous exceptions. Based on <https://www.well-typed.com/blog/2015/07/checked-exceptions/ Lightweight Checked Exceptions> by Edsko de Vries and Adam Gundry.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."safe-exceptions-checked" or (errorHandler.buildDepError "safe-exceptions-checked"))
          ];
          buildable = true;
        };
      };
    };
  }