{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "SelectSequencesFromMSA";
        version = "1.0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "SelectSequences is a tool for selection of a represenative subset of sequences from a multiple sequence alignment in clustal format.";
      description = "SelectSequences is a tool for selection of a represenative subset of sequences from a multiple sequence alignment in clustal format.\n\nOptional Dependencies:\n\n* <https://www.tbi.univie.ac.at/~wash/RNAz/ RNAz>\nInstallation via cabal-install:\n\n> cabal install SelectSequencesFromMSA";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.ViennaRNAParser)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.biofasta)
          (hsPkgs.parsec)
          (hsPkgs.biocore)
          (hsPkgs.bytestring)
          (hsPkgs.either-unwrap)
          (hsPkgs.containers)
          (hsPkgs.ClustalParser)
          (hsPkgs.vector)
          (hsPkgs.matrix)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.text-metrics)
        ];
      };
      exes = {
        "SelectSequencesFromMSA" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.either-unwrap)
            (hsPkgs.SelectSequencesFromMSA)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }