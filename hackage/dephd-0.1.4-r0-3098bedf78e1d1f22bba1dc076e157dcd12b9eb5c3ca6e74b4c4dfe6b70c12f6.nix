{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "dephd";
        version = "0.1.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/biohaskell/dephd";
      url = "";
      synopsis = "Analyze quality of nucleotide sequences.";
      description = "dephd - A simple tool for base calling and quality appraisal.\n\nReads files in phd-format (phred output), either specified individually,\nor in a directory (use the --input-dirs option to read directories\nor --input-list to read from an index file).  Can also read FASTA with an\nassociated quality file.\n\nCan trim according to Lucy or Phred parameters, can mask by quality, can plot\ngraphs (via gnuplot) of sequence quality to a window, or to JPG/EPS files.  Can\ncategorize sequences according to overall quality.  Also constructs files suitable for\nsubmission to dbEST.  More information at <http://blog.malde.org/index.php/2010/09/07/submitting-ests-upstream/>.\n\nAlso provides 'fakequal', a utility to generate bogus quality values,\nwhich are sometimes needed by less flexible tools.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/dephd>.";
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
            (hsPkgs.cmdargs)
          ];
        };
        "fakequal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bio)
            (hsPkgs.regex-compat)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }