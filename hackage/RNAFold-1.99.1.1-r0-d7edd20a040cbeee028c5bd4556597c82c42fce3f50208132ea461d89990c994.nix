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
    flags = { llvm = true; };
    package = {
      specVersion = "1.6.0";
      identifier = { name = "RNAFold"; version = "1.99.1.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al (ViennaRNA), 2010-2012";
      homepage = "http://www.tbi.univie.ac.at/~choener/adpfusion";
      url = "";
      synopsis = "RNA secondary structure prediction";
      description = "RNAfold v2 using the ADPfusion library. The RNAfold algorithm\nis used to determine how fast we can be compared to a highly\noptimized C program.\n\nIf possible, build using the GHC llvm backend, and GHC-7.2.2.\nGHC-7.4.x produces very bad code on my system, please benchmark\nusing 7.2.2.\n\nNOTE I'd like to rename this package to RNAfold, like the C\nimplementation. Do not install \"globally\", especially if you\nnormally use RNAfold from the ViennaRNA package, for obvious\nreasons.\n\nNOTE I am reluctant to call this v2 for now.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          (hsPkgs."BiobaseVienna" or (buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
          (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
          ];
        };
      exes = { "RNAFold" = {}; };
      };
    }