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
      identifier = { name = "sort"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan 2017";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/sort";
      url = "";
      synopsis = "A Haskell sorting toolkit";
      description = "A library of general-purpose sorting utilities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }