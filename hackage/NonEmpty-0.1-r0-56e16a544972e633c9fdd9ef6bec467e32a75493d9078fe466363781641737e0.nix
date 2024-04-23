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
      specVersion = "1.6";
      identifier = { name = "NonEmpty"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Robin Green 2009";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "Robin Green";
      homepage = "";
      url = "";
      synopsis = "Library providing a non-empty list datatype, and total functions operating on it";
      description = "When you want to state that a list should always be non-empty, you can use this type.\nThis enables you to avoid the error of taking the head or tail of an empty list.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }