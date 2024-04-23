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
      identifier = { name = "tree-fun"; version = "0.8.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gs394@drexel.edu";
      author = "Gregory Schwartz";
      homepage = "";
      url = "";
      synopsis = "Library for functions pertaining to tree exploration and manipulation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }