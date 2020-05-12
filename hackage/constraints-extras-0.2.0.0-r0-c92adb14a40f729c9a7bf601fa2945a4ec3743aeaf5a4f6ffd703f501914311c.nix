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
      identifier = { name = "constraints-extras"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Cale Gibbard, Ali Abrar";
      homepage = "";
      url = "";
      synopsis = "Utility package for constraints";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }