{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "dephd";
        version = "0.1.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/biohaskell/dephd";
      url = "";
      synopsis = "Analyze quality of nucleotide sequences.";
      description = "dephd - A simple tool for base calling and quality appraisal.\n\nReads files in phd-format (phred output), either specified individually,\nor in a directory (use the --input-dirs option to read directories\nor --input-list to read from an index file).  Can also read FASTA with an\nassociated quality file.\n\nCan trim according to Lucy or Phred parameters, can mask by quality, can plot\ngraphs (via gnuplot) of sequence quality to a window, or to JPG/EPS files.  Can\ncategorize sequences according to overall quality.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/dephd>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dephd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bio)
            (hsPkgs.regex-compat)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }