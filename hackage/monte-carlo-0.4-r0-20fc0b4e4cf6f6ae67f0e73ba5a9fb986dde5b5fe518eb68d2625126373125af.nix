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
      specVersion = "1.2.3";
      identifier = { name = "monte-carlo"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Patrick Perry <patperry@gmail.com>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/hs-monte-carlo";
      url = "";
      synopsis = "A monad and transformer for Monte Carlo calculations.";
      description = "A monad and transformer for Monte Carlo calculations.  The\nmonads carry and provide access to a random number generator.\nImportantly, they only keep one copy of the generator state,\nand so are much more efficient than MonadRandom.  Currently,\nonly the generator that comes with the GNU Scientific Library\n(GSL) is supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gsl-random" or (errorHandler.buildDepError "gsl-random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }