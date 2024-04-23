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
      identifier = { name = "constr-eq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidp0@gmail.com";
      author = "Zoltan Kelemen";
      homepage = "https://github.com/kelemzol/constr-eq";
      url = "";
      synopsis = "Equality by only Constructor";
      description = "This package provides functionality for equality by only Constructors.\nThat means ConstrEq is ignore all parameters of a constructor and only makes a difference based on the constructor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }