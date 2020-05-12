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
      specVersion = "1.6";
      identifier = { name = "gloss-algorithms"; version = "1.9.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Data structures and algorithms for working with 2D graphics.";
      description = "Data structures and algorithms for working with 2D graphics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          ];
        buildable = true;
        };
      };
    }