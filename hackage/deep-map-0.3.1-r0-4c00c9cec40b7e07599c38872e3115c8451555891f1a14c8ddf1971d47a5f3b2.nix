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
      identifier = { name = "deep-map"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2021-2024 Melanie Brown";
      maintainer = "brown.m@pm.me";
      author = "Melanie Brown";
      homepage = "https://github.com/mixphix/deep-map";
      url = "";
      synopsis = "Deeply-nested, multiple key type maps.";
      description = "Please see the README at https://github.com/mixphix/deep-map";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
        ];
        buildable = true;
      };
    };
  }