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
      identifier = { name = "monte-carlo"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/monte-carlo";
      url = "";
      synopsis = "A monad and transformer for Monte Carlo calculations.";
      description = "A monad and transformer for Monte Carlo calculations.  The\nmonads carry and provide access to a random number generator.\nImportantly, they only keep one copy of the generator state,\nand so are much more efficient than MonadRandom.  Currently,\nonly the generator that comes with the GNU Scientific Library\n(GSL) is supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."gsl-random" or (errorHandler.buildDepError "gsl-random"))
          (hsPkgs."uvector" or (errorHandler.buildDepError "uvector"))
          ];
        buildable = true;
        };
      };
    }