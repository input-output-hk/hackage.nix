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
      specVersion = "1.8";
      identifier = { name = "modular-arithmetic"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tikhon@jelv.is";
      author = "Tikhon Jelvis <tikhon@jelv.is>";
      homepage = "";
      url = "";
      synopsis = "A type for integers modulo some constant.";
      description = "This module provides a convenient type for working with\nintegers modulo some constant. It saves you from manually\nwrapping numeric operations all over the place and\nprevents a range of simple mistakes.\nIt also provides some really cute syntax for these types\nlike @ℤ/7@ for integers modulo 7.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }