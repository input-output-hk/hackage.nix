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
      identifier = { name = "hylogen"; version = "0.1.5.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "freshdried@gmail.com";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/hylogen";
      url = "";
      synopsis = "GLSL embedded in Haskell";
      description = "GLSL embedded in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
          ];
        buildable = true;
        };
      };
    }