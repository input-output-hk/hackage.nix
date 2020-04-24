{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildsketch = false; llvm = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "classify-frog"; version = "0.2.3"; };
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
            (hsPkgs."hmm-hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmm-hmatrix"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."lazy-csv" or ((hsPkgs.pkgs-errors).buildDepError "lazy-csv"))
            (hsPkgs."tagchup" or ((hsPkgs.pkgs-errors).buildDepError "tagchup"))
            (hsPkgs."xml-basic" or ((hsPkgs.pkgs-errors).buildDepError "xml-basic"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."audacity" or ((hsPkgs.pkgs-errors).buildDepError "audacity"))
            (hsPkgs."soxlib" or ((hsPkgs.pkgs-errors).buildDepError "soxlib"))
            (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."pooled-io" or ((hsPkgs.pkgs-errors).buildDepError "pooled-io"))
            (hsPkgs."concurrent-split" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-split"))
            (hsPkgs."fft" or ((hsPkgs.pkgs-errors).buildDepError "fft"))
            (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
            (hsPkgs."storablevector-carray" or ((hsPkgs.pkgs-errors).buildDepError "storablevector-carray"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.llvm) [
            (hsPkgs."synthesizer-llvm" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or ((hsPkgs.pkgs-errors).buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or ((hsPkgs.pkgs-errors).buildDepError "llvm-tf"))
            ];
          buildable = true;
          };
        "spectral-distribution" = {
          depends = (pkgs.lib).optionals (flags.buildsketch) [
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildsketch then true else false;
          };
        };
      };
    }