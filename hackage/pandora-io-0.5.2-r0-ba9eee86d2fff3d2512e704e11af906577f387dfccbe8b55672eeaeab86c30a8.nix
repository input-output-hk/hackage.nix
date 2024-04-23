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
      identifier = { name = "pandora-io"; version = "0.5.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2019 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/pandora-io";
      url = "";
      synopsis = "...";
      description = "...";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."pandora" or (errorHandler.buildDepError "pandora"))
        ];
        buildable = true;
      };
    };
  }