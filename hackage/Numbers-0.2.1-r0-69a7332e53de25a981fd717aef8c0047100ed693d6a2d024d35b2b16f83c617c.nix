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
      specVersion = "1.2";
      identifier = { name = "Numbers"; version = "0.2.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "aneumann@inf.fu-berlin.de";
      author = "Adrian Neumann";
      homepage = "http://page.mi.fu-berlin.de/aneumann/numbers/index.html";
      url = "";
      synopsis = "An assortment of number theoretic functions";
      description = "Functions for finding prime numbers, checking whether a number is prime, finding the factors of a number etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }