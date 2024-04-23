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
      identifier = {
        name = "morphisms-functors-inventory";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/morphisms-functors-inventory";
      url = "";
      synopsis = "Inventory is state and store";
      description = "Primitives for working with immutable data structures.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."morphisms" or (errorHandler.buildDepError "morphisms"))
          (hsPkgs."morphisms-functors" or (errorHandler.buildDepError "morphisms-functors"))
        ];
        buildable = true;
      };
    };
  }