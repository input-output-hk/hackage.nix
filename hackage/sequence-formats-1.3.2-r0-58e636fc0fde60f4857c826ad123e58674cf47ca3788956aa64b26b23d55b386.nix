{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sequence-formats"; version = "1.3.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "stephan.schiffels@mac.com";
      author = "Stephan Schiffels";
      homepage = "";
      url = "";
      synopsis = "A package with basic parsing utilities for several Bioinformatic data formats.";
      description = "Contains utilities to parse and write Eigenstrat, Fasta, FreqSum, VCF and other file formats used in population genetics analyses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.errors)
          (hsPkgs.attoparsec)
          (hsPkgs.pipes)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.lens-family)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.foldl)
          (hsPkgs.exceptions)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "sequenceFormatTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.sequence-formats)
            (hsPkgs.foldl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.tasty)
            (hsPkgs.vector)
            (hsPkgs.transformers)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }