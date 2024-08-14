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
      identifier = { name = "generic-enumeration"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "2023 Rick Owens";
      maintainer = "rick@owensmurray.com";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/generic-enumeration";
      url = "";
      synopsis = "Generically derived enumerations.";
      description = "This package provides a way to generically obtain\nevery possible value of a type, provided that the\ngeneric representation of the type is compatible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }