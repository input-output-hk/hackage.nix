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
      identifier = { name = "MC-Fold-DP"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010-2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, Stephan H Bernhart, Peter F Stadler, Ivo L Hofacker";
      homepage = "http://www.tbi.univie.ac.at/software/mcfolddp/";
      url = "";
      synopsis = "Folding algorithm based on nucleotide cyclic motifs.";
      description = "This is a RNA secondary structure prediction tool based on the\nidea of combining small motifs, called nucleotide cyclic motifs\n(NCMs). The algorithm implemented here and described in\n\nHoener zu Siederdissen C, Bernhart SH, Stadler PF, Hofacker IL,\n\"A Folding Algorithm for Extended RNA Secondary Structures\",\n2011, submitted\n\nhas polynomial runtime in O(n^3) and uses a (pseudo-energy)\nscoring scheme based on\n\nParisien M, Major F. \"The MC-Fold and MC-Sym pipeline infers\nRNA structure from sequence data\",  Nature 2008,\n452(7183):51-55. <http://www.major.iric.ca/MC-Fold/>\n\nThis program uses the same database as MC-Fold (which has\nexponential run-time) and aims to be able to produce the same\nresults.\n\nThe underlying grammar of our implementation is unambiguous and\nallows the complete evaluation of all structures within an\nenergy band above the ground state, presenting each unique\nstructure just once. Alternatively, the grammar allows\npartition function calculations.\n\nCurrent status:\n\n* comparable prediction accuracy on sequences\n\n* possibility to use sparse data correction\n\n* handles non-ACGU nucleotides gracefully\n\n* suboptimals: return all structures within an energy band above the ground state\n\nTodo:\n\n* Boltzmann likelihood calculations\n\n* pseudoknot calculations (currently aiming for a pknotsRG-like algorithm)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          (hsPkgs."Biobase" or (buildDepError "Biobase"))
          ];
        };
      exes = {
        "MCFoldDP" = {
          depends = [ (hsPkgs."cmdargs" or (buildDepError "cmdargs")) ];
          };
        };
      };
    }