{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "haskeem"; version = "0.7.12"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      };
    }