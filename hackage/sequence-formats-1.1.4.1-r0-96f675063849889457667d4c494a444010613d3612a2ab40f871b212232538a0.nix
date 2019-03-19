{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sequence-formats"; version = "1.1.4.1"; };
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
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.pipes)
          (hsPkgs.pipes-text)
          (hsPkgs.transformers)
          (hsPkgs.turtle)
          (hsPkgs.bytestring)
          (hsPkgs.lens-family)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.foldl)
          (hsPkgs.exceptions)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.vector)
          (hsPkgs.data-memocombinators)
          (hsPkgs.split)
          (hsPkgs.MissingH)
          (hsPkgs.hslogger)
          ];
        };
      };
    }