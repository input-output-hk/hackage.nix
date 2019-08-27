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
      identifier = { name = "RNAFoldProgs"; version = "0.0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al. (ViennaRNA package)";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen (Haskell), Ivo L. Hofacker et al. (ViennaRNA package)";
      homepage = "";
      url = "";
      synopsis = "RNA secondary structure folding";
      description = "RNA secondary structure following \"Fast Folding and Comparison\nof RNA Secondary Structures, Hofacker et al., 1994\". Uses the\nTurner 2004 parameter set. The algorithm work on an algebraic\nring structure that is instanciated as required. This\nprelimenary release contains the minimum-free energy version\nonly.\n\n- Do not expect good runtimes with anything less than\n6.13.201008xx. The newest head produces an executable roughly\n20x faster than GHC 6.12.3.\n\n- Bugs are likely present in this algorithm. If you find one,\nplease send me a mail.\n\n- One goal is to get the vector library to optimise the loops\n(fold's) in such a way as to get performance close to the\nViennaRNA package. Right now, we are about 15x slower.\n\n- Works well with -Odph, -fllvm (llvm is about 70% faster than\n-fasm)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsRNAFold" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."Biobase" or (buildDepError "Biobase"))
            (hsPkgs."BiobaseVienna" or (buildDepError "BiobaseVienna"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."RNAFold" or (buildDepError "RNAFold"))
            ];
          };
        "hsRNAEval" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."Biobase" or (buildDepError "Biobase"))
            (hsPkgs."RNAFold" or (buildDepError "RNAFold"))
            ];
          };
        };
      };
    }