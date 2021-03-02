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
      specVersion = "1.0";
      identifier = { name = "bio"; version = "0.3.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@ii.uib.no";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "A bioinformatics library";
      description = "This is a collection of data structures and algorithms\nI've found useful when building various bioinformatics-related tools\nand utilities.\n\nCurrent list of features includes: a Sequence data type supporting\nprotein and nucleotide sequences and conversion between them, quality\ndata, reading and writing Fasta formatted files, reading TwoBit and\nphd formats.  Rudimentary support for doing alignments - including\ndynamic adjustment of scores based on sequence quality - and Blast\noutput parsing.  Partly implemented single linkage clustering, and\nmultiple alignment.\n\nThe Darcs repository is at: <http://malde.org/~ketil/bio>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."interlude" or (errorHandler.buildDepError "interlude"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }