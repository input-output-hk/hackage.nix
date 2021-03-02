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
      specVersion = "1.4";
      identifier = { name = "ieee-utils-tempfix"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Matt Morrow, Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "ieee-utils";
      description = "IEEE 754 (Standard for Binary Floating-Point Arithmetic) Utilities.\n\nThis package is a simple adaptation of ieee-utils, but compilable by ghc >= 7.\nUnfortunately, MK had no response from the mainainer of ieee-utils, despite trying\nto make contact for over 2 years.  MK plans to deprecate this package when I find out that\nieee-utils is fixed or deprecated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }