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
      identifier = { name = "hs-inspector"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "flbulgarelli@frba.utn.edu.ar";
      author = "Franco Leonardo Bulgarelli";
      homepage = "";
      url = "";
      synopsis = "Haskell source code analyzer";
      description = "Simple package for detecting usage of certain Haskell features on a module source code";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hs-inspector" or (errorHandler.buildDepError "hs-inspector"))
            ];
          buildable = true;
          };
        };
      };
    }