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
      specVersion = "1.18";
      identifier = { name = "sigma-ij"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, 2016 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Thom polynomials of second order Thom-Boardman singularities";
      description = "A program to compute Thom polynomials of second order Thom-Boardman\nsingularities, using the localization method described in the\nauthor's PhD thesis <http://renyi.hu/~komuves/phdthesis.pdf>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec2" or (errorHandler.buildDepError "parsec2"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
          ];
        buildable = true;
        };
      exes = {
        "sigma-ij" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."sigma-ij" or (errorHandler.buildDepError "sigma-ij"))
            (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
            ];
          buildable = true;
          };
        };
      };
    }