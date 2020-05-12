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
      specVersion = "1.10.0";
      identifier = { name = "hquantlib"; version = "0.0.1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
      author = "Pavel Ryzhov";
      homepage = "http://code.google.com/p/hquantlib/";
      url = "";
      synopsis = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
      description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell2010" or (errorHandler.buildDepError "haskell2010"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."hmatrix-special" or (errorHandler.buildDepError "hmatrix-special"))
          (hsPkgs."gsl-random" or (errorHandler.buildDepError "gsl-random"))
          ];
        buildable = true;
        };
      };
    }