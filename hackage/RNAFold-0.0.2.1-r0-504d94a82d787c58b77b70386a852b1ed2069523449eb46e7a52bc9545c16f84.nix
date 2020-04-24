{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4.0";
      identifier = { name = "RNAFold"; version = "0.0.2.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al (ViennaRNA)";
      homepage = "";
      url = "";
      synopsis = "RNA secondary structure prediction";
      description = "Provides the folding functions as used in the ViennaRNA\npackage. Here, they are in Haskell form to be used by Haskell\nprograms.\n\n- This is a release aimed at testing Data.Vector\n- Expect major performance issues with GHC < 6.13!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."Biobase" or ((hsPkgs.pkgs-errors).buildDepError "Biobase"))
          (hsPkgs."BiobaseTurner" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseTypes" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTypes"))
          (hsPkgs."HsTools" or ((hsPkgs.pkgs-errors).buildDepError "HsTools"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          ];
        buildable = true;
        };
      };
    }