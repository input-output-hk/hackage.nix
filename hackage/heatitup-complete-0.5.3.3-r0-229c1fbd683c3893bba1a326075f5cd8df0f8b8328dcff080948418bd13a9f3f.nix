{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heatitup-complete"; version = "0.5.3.3"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2018 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/heatitup-complete#readme";
      url = "";
      synopsis = "Find and annotate ITDs with assembly or read pair joining.";
      description = "Find and annotate ITDs with assembly or read pair joining using suffix trees and characterize the exogenous segments within the spacer using heat diffusion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.fasta)
          (hsPkgs.foldl)
          (hsPkgs.lens)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.turtle)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "heatitup-complete" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.heatitup-complete)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.fasta)
            (hsPkgs.foldl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.pipes-text)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.turtle)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }