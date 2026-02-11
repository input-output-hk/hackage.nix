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
      specVersion = "3.14";
      identifier = { name = "type-fold"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "eikochanowo@outlook.com";
      author = "Eiko";
      homepage = "";
      url = "";
      synopsis = "A library for folding types to a value.";
      description = "This module provides an interface for a generic folding mechanism over types, allowing library authors to define the shape of fold, while library users can define custom folding logic for their types by implementing the `TypeFoldStep` type class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }