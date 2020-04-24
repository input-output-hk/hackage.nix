{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
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
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."gsl-random" or ((hsPkgs.pkgs-errors).buildDepError "gsl-random"))
          (hsPkgs."uvector" or ((hsPkgs.pkgs-errors).buildDepError "uvector"))
          ];
        buildable = true;
        };
      };
    }