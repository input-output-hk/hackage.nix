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
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "dephd"; version = "0.1.3"; };
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
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }