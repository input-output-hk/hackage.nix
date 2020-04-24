{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "statistics-hypergeometric-genvar";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "2015 Sam Rijs\n2005 Robert Kern\n1998 Ivan Frohne";
      maintainer = "Sam Rijs <srijs@airpost.net>";
      author = "Sam Rijs <srijs@airpost.net>";
      homepage = "https://github.com/srijs/statistics-hypergeometric-genvar";
      url = "";
      synopsis = "Random variate generation from hypergeometric distributions";
      description = "Supplements the @Statistics.Distribution.Hypergeometric@\nmodule from the excellent @statistics@ package.\n\nImplements the interfaces @ContGen@ and @DiscreteGen@ for\n@HypergeometricDistribution@. Provides it's own function\n@genVar@ generalised over @Integral@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
          (hsPkgs."math-functions" or ((hsPkgs.pkgs-errors).buildDepError "math-functions"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          ];
        buildable = true;
        };
      };
    }