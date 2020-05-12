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
      identifier = { name = "haskeem"; version = "0.7.16"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      author = "Uwe Hollerbach <uh@alumni.caltech.edu>";
      homepage = "http://www.korgwal.com/haskeem/";
      url = "";
      synopsis = "A small scheme interpreter";
      description = "This is a moderately complete small scheme interpreter.\nIt implements most of R6RS, with the exception of call/cc.\nIt is however starting to have a set of delimited\ncontinuations, reset/shift et al. It has a macro system,\nalthough not R6RS hygienic macros. It is also not\nnecessarily fully tail-recursive; so it's not\nindustrial-strength. For playing with or learning scheme,\nit should be pretty good.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskeem" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      };
    }