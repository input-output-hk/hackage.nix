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
      identifier = { name = "apecs-stm"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs-stm#readme";
      url = "";
      synopsis = "STM stores for apecs";
      description = "Apecs stores that live in the STM monad, and other tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."apecs" or (errorHandler.buildDepError "apecs"))
          ];
        buildable = true;
        };
      };
    }