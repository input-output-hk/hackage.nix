{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "sigma-ij"; version = "0.2.0.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."parsec2" or ((hsPkgs.pkgs-errors).buildDepError "parsec2"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."combinat" or ((hsPkgs.pkgs-errors).buildDepError "combinat"))
          ];
        buildable = true;
        };
      exes = {
        "sigma-ij" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."sigma-ij" or ((hsPkgs.pkgs-errors).buildDepError "sigma-ij"))
            (hsPkgs."combinat" or ((hsPkgs.pkgs-errors).buildDepError "combinat"))
            ];
          buildable = true;
          };
        };
      };
    }