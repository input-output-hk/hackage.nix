{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "simgi"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2009-2010 Markus Dittrich, NRBSC & CMU";
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
            ];
          buildable = true;
          };
        };
      };
    }