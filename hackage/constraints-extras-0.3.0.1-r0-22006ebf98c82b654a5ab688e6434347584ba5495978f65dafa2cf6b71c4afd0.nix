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
      identifier = { name = "constraints-extras"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Cale Gibbard, Ali Abrar";
      homepage = "";
      url = "";
      synopsis = "Utility package for constraints";
      description = "Convenience functions and TH for working with constraints. See <https://github.com/obsidiansystems/constraints-extras/blob/develop/README.md README.md> for example usage.";
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
      exes = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."constraints-extras" or (errorHandler.buildDepError "constraints-extras"))
            ];
          buildable = true;
          };
        };
      };
    }