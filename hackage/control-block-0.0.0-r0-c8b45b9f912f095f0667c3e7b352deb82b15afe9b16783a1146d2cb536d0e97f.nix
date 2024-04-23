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
      specVersion = "3.0";
      identifier = { name = "control-block"; version = "0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "brown.m@proton.me";
      author = "Melanie Phoenix Brown";
      homepage = "";
      url = "";
      synopsis = "Higher-order functions with their function arguments at the end";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
        ];
        buildable = true;
      };
    };
  }