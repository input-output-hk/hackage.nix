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
      identifier = { name = "simgi"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2009 Markus Dittrich";
      maintainer = "<haskelladdict@users.sourceforge.net>";
      author = "<haskelladdict@users.sourceforge.net>";
      homepage = "http://simgi.sourceforge.net/";
      url = "";
      synopsis = "stochastic simulation engine";
      description = "simgi is a stochastic simulation engine to model\nmolecular systems using Gillespie's method.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "simgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mersenne-random-pure64" or (errorHandler.buildDepError "mersenne-random-pure64"))
          ];
          buildable = true;
        };
      };
    };
  }