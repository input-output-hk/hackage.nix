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
      identifier = { name = "newtype-generics"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "João Cristóvão <jmacristovao@gmail.com>";
      author = "Darius Jahandarie, Conor McBride, João Cristóvão";
      homepage = "";
      url = "";
      synopsis = "A typeclass and set of functions for working with newtypes, with generics support.";
      description = "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype,\nand allows you to operatate under that newtype with functions such as ala.\nGenerics support was added in version 0.4, making this package a full replacement\nfor the original newtype package, and a better alternative to newtype-th.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }