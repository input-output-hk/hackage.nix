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
      identifier = { name = "clumpiness"; version = "0.17.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory Schwartz";
      homepage = "";
      url = "";
      synopsis = "Calculate the clumpiness of leaf properties in a tree";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tree-fun" or (errorHandler.buildDepError "tree-fun"))
        ];
        buildable = true;
      };
    };
  }