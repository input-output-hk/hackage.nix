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
      specVersion = "1.2";
      identifier = { name = "Workflow"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "FreeChooser";
      description = "FreeChooser project";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."TCache" or (errorHandler.buildDepError "TCache"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."RefSerialize" or (errorHandler.buildDepError "RefSerialize"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        buildable = true;
        };
      };
    }