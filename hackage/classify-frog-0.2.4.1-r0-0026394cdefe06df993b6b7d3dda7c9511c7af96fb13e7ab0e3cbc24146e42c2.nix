{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs.hmm-lapack)
            (hsPkgs.lapack)
            (hsPkgs.comfort-array)
            (hsPkgs.text)
            (hsPkgs.lazy-csv)
            (hsPkgs.tagchup)
            (hsPkgs.xml-basic)
            (hsPkgs.synthesizer-core)
            (hsPkgs.audacity)
            (hsPkgs.soxlib)
            (hsPkgs.gnuplot)
            (hsPkgs.parallel)
            (hsPkgs.pooled-io)
            (hsPkgs.concurrent-split)
            (hsPkgs.fft)
            (hsPkgs.carray)
            (hsPkgs.storablevector-carray)
            (hsPkgs.storablevector)
            (hsPkgs.storable-record)
            (hsPkgs.array)
            (hsPkgs.time)
            (hsPkgs.Cabal)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filemanip)
            (hsPkgs.pathtype)
            (hsPkgs.non-empty)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.bifunctors)
            (hsPkgs.semigroups)
            (hsPkgs.utility-ht)
            (hsPkgs.numeric-prelude)
            (hsPkgs.deepseq)
            (hsPkgs.base)
            ] ++ (pkgs.lib).optionals (flags.llvm) [
            (hsPkgs.synthesizer-llvm)
            (hsPkgs.llvm-extra)
            (hsPkgs.llvm-tf)
            ];
          };
        "spectral-distribution" = {
          depends = (pkgs.lib).optionals (flags.buildsketch) [
            (hsPkgs.synthesizer-core)
            (hsPkgs.storablevector)
            (hsPkgs.utility-ht)
            (hsPkgs.numeric-prelude)
            (hsPkgs.base)
            ];
          };
        };
      };
    }