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
      identifier = { name = "errors-ext"; version = "0.1.1"; };
      license = "LicenseRef-Apache";
      copyright = "2017 Warlock";
      maintainer = "internalmike@gmail.com";
      author = "Warlock";
      homepage = "https://github.com/A1-Triard/errors-ext#readme";
      url = "";
      synopsis = "A bracket function for ExceptT over IO monad.";
      description = "A bracket function for ExceptT over IO monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "errors-ext-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."errors-ext" or (errorHandler.buildDepError "errors-ext"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }