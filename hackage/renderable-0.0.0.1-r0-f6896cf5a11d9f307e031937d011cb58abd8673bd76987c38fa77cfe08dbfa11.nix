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
      identifier = { name = "renderable"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "http://zyghost.com";
      url = "";
      synopsis = "Provides a nice API for rendering data types that change\nover time.";
      description = "Instances of Renderable conform to a simple API that makes their\nvisual representations composable through hashing and cacheing.\nAlso provided are some convenience functions for writing\nRenderable instances, as well as top level rendering functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }