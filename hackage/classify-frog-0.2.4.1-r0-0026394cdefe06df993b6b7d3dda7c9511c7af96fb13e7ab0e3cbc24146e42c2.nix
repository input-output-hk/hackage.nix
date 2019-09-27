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
    flags = { buildsketch = false; llvm = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "classify-frog"; version = "0.2.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/classify-frog/";
      url = "";
      synopsis = "Classify sounds produced by Xenopus laevis";
      description = "This program is part of the Xenocall project.\nResearchers observed that the amount and duration of calls\nof the African clawed frog (Xenopus laevis) change\nwhen exposed to hormonal effective substances.\nThe Xenocall project checks whether this effect\ncan be used as an endpoint in animal tests\ninstead of dissecting animals after the experiments.\n\nAn experiment for one substance\nmay produce about 100 hours of audio recordings.\nIt is a very tedious and error-prone work\nto examine this amount of data visually or by listening.\nThe purpose of this program is to examine the recordings automatically\nand generate tables with basic statistical parameters.\n\nRead the full report at\n<http://code.henning-thielemann.de/classify-frog-doc/report.pdf>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "classify-frog" = {
          depends = [
            (hsPkgs."hmm-lapack" or (buildDepError "hmm-lapack"))
            (hsPkgs."lapack" or (buildDepError "lapack"))
            (hsPkgs."comfort-array" or (buildDepError "comfort-array"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."lazy-csv" or (buildDepError "lazy-csv"))
            (hsPkgs."tagchup" or (buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (buildDepError "xml-basic"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."audacity" or (buildDepError "audacity"))
            (hsPkgs."soxlib" or (buildDepError "soxlib"))
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."pooled-io" or (buildDepError "pooled-io"))
            (hsPkgs."concurrent-split" or (buildDepError "concurrent-split"))
            (hsPkgs."fft" or (buildDepError "fft"))
            (hsPkgs."carray" or (buildDepError "carray"))
            (hsPkgs."storablevector-carray" or (buildDepError "storablevector-carray"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."base" or (buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.llvm) [
            (hsPkgs."synthesizer-llvm" or (buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (buildDepError "llvm-tf"))
            ];
          buildable = true;
          };
        "spectral-distribution" = {
          depends = (pkgs.lib).optionals (flags.buildsketch) [
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildsketch then true else false;
          };
        };
      };
    }