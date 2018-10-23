{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "heatitup";
        version = "0.5.3.3";
      };
      license = "GPL-3.0-only";
      copyright = "2018 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/heatitup#readme";
      url = "";
      synopsis = "Find and annotate ITDs.";
      description = "Find and annotate ITDs using suffix trees and characterize the exogenous segments within the spacer using heat diffusion.";
      buildType = "Simple";
    };
    components = {
      "heatitup" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-show)
          (hsPkgs.cassava)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.diagrams-lib)
          (hsPkgs.edit-distance)
          (hsPkgs.fasta)
          (hsPkgs.lens)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-csv)
          (hsPkgs.safe)
          (hsPkgs.string-similarity)
          (hsPkgs.stringsearch)
          (hsPkgs.suffixtree)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "heatitup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.heatitup)
            (hsPkgs.bytestring)
            (hsPkgs.colour)
            (hsPkgs.containers)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-pgf)
            (hsPkgs.diagrams-svg)
            (hsPkgs.diagrams-html5)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.fasta)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-csv)
            (hsPkgs.safe)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }