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
      identifier = { name = "database-id-groundhog"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "";
      url = "";
      synopsis = "HasId/Groundhog interop";
      description = "A class and some instances for HasId/Groundhog interoperation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."database-id-class" or (errorHandler.buildDepError "database-id-class"))
          (hsPkgs."groundhog" or (errorHandler.buildDepError "groundhog"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }