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
      specVersion = "1.0";
      identifier = { name = "dimensional-tf"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2006-2014";
      maintainer = "bjorn@buckwalter.se";
      author = "Bjorn Buckwalter";
      homepage = "http://dimensional.googlecode.com/";
      url = "";
      synopsis = "Statically checked physical dimensions, implemented\nusing type families.";
      description = "Dimensional is a library providing data types for performing arithmetic\nwith physical quantities and units. Information about the physical\ndimensions of the quantities and units is embedded in their types and the\nvalidity of operations is verified by the type checker at compile time.\nThe boxing and unboxing of numerical values as quantities is done by\nmultiplication and division with units. The library is designed to, as\nfar as is practical, enforce/encourage best practices of unit usage.\nThe dimensional-tf packade differs from the dimensional package in that\nthe dimension tracking is implemented using type families rather than\nfunctional dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."numtype-tf" or (errorHandler.buildDepError "numtype-tf"))
        ];
        buildable = true;
      };
    };
  }