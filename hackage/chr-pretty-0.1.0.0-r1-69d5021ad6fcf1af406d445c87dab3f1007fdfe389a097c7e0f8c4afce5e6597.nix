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
      identifier = { name = "chr-pretty"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzedijkstra@gmail.com";
      author = "Atze Dijkstra";
      homepage = "https://github.com/atzedijkstra/chr";
      url = "";
      synopsis = "Pretty printing for chr library";
      description = "Pretty printing for chr library, a simplified implementation for the pretty printing API from uulib";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }