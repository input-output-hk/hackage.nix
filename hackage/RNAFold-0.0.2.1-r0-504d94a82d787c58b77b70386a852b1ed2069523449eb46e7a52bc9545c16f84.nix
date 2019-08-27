let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."Biobase" or (buildDepError "Biobase"))
          (hsPkgs."BiobaseTurner" or (buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or (buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseTypes" or (buildDepError "BiobaseTypes"))
          (hsPkgs."HsTools" or (buildDepError "HsTools"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          ];
        };
      };
    }