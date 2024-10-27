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
      identifier = { name = "data-default-class"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Lukas Mai";
      maintainer = "<lukasmai.403+hackage@gmail.com>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "A class for types with a default value (compatibility shim)";
      description = "This module re-exports the 'Default' class from \"Data.Default\", for\ncompatibility with older code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
    };
  }