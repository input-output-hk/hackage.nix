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
      identifier = { name = "bio"; version = "0.4"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@ii.uib.no";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/index.php/the-haskell-bioinformatics-library/";
      url = "";
      synopsis = "A bioinformatics library";
      description = "This is a collection of data structures and algorithms\nuseful for building bioinformatics-related tools\nand utilities.\n\nCurrent list of features includes: a Sequence data type supporting\nprotein and nucleotide sequences and conversion between them.  As of version\n0.4, different kinds of sequence have different types.  Support for quality\ndata, reading and writing Fasta formatted files, reading TwoBit and\nphd formats, and Roche/454 SFF files.  Rudimentary (i.e. unoptimized) support\nfor doing alignments - including dynamic adjustment of scores based on sequence quality.\nAlso Blast output parsing.  Partly implemented single linkage clustering, and\nmultiple alignment.  Reading Gene Ontology (GO) annotations (GOA) and\ndefinitions\\/hierarchy.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/biolib>.";
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
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }