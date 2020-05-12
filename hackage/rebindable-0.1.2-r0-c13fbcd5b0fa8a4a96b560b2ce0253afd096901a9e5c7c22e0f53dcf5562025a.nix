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
      identifier = { name = "rebindable"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sean Lee <freshdried@gmail.com>";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/rebindable";
      url = "";
      synopsis = "A library to facilitate rebinding of Haskell syntax";
      description = "A library to facilitate rebinding of Haskell syntax";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
          ];
        buildable = true;
        };
      };
    }