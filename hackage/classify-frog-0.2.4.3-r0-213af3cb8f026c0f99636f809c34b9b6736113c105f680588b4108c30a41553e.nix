{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { buildsketch = false; llvm = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "classify-frog"; version = "0.2.4.3"; };
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
            (hsPkgs."hmm-lapack" or (errorHandler.buildDepError "hmm-lapack"))
            (hsPkgs."lapack" or (errorHandler.buildDepError "lapack"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lazy-csv" or (errorHandler.buildDepError "lazy-csv"))
            (hsPkgs."tagchup" or (errorHandler.buildDepError "tagchup"))
            (hsPkgs."xml-basic" or (errorHandler.buildDepError "xml-basic"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."audacity" or (errorHandler.buildDepError "audacity"))
            (hsPkgs."soxlib" or (errorHandler.buildDepError "soxlib"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."pooled-io" or (errorHandler.buildDepError "pooled-io"))
            (hsPkgs."concurrent-split" or (errorHandler.buildDepError "concurrent-split"))
            (hsPkgs."fft" or (errorHandler.buildDepError "fft"))
            (hsPkgs."carray" or (errorHandler.buildDepError "carray"))
            (hsPkgs."storablevector-carray" or (errorHandler.buildDepError "storablevector-carray"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."pathtype" or (errorHandler.buildDepError "pathtype"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (pkgs.lib).optionals (flags.llvm) [
            (hsPkgs."synthesizer-llvm" or (errorHandler.buildDepError "synthesizer-llvm"))
            (hsPkgs."llvm-extra" or (errorHandler.buildDepError "llvm-extra"))
            (hsPkgs."llvm-tf" or (errorHandler.buildDepError "llvm-tf"))
            ];
          buildable = true;
          };
        "spectral-distribution" = {
          depends = (pkgs.lib).optionals (flags.buildsketch) [
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildsketch then true else false;
          };
        };
      };
    }