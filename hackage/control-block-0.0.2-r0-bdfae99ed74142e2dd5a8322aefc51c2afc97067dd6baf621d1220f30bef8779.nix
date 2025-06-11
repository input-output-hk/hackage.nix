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
      identifier = { name = "control-block"; version = "0.0.2"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "brown.m@proton.me";
      author = "Melanie Phoenix";
      homepage = "";
      url = "";
      synopsis = "Higher-order functions with their function arguments at the end,\nfor channeling the full power of BlockArguments and LambdaCase .";
      description = "Higher-order functions with their function arguments at the end,\nfor channeling the full power of BlockArguments and LambdaCase .";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
    };
  }