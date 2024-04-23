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
      specVersion = "1.2";
      identifier = { name = "clustertools"; version = "0.1.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "Tools for manipulating sequence clusters";
      description = "This is a bunch of stuff I needed at some for manipulating sequence\nclusters. See the README for details. The tools included are:\n\n* filter - remove unwanted sequences from a clustering\n\n* hist   - produce a histogram of cluster sizes from a \"label\"-formatted clustering.\n\n* clusc  - compare clusterings, calculating numerous pair-based and entropy based indices.\n\n* add_single - add singletons to a clustering.\n\n* ace2contigs - parse an ACE assembly file, and output the contigs in a FASTA file.\n\n* ace2fasta - parse an ACE assembly, and output each assembly in a separate FASTA file\n\n* ace2clusters - parse an ACE assembly, and output clusters in TGICL format\n\n* clusterlibs - given a table of regular expressions and library names, along with a\nclustering (TGICL-format), output a table of cluster sizes per library.\n\n* xcerpt - extract sequences from a list of sequence labels.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/cluster_tools>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "filter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."simpleargs" or (errorHandler.buildDepError "simpleargs"))
          ];
          buildable = true;
        };
        "clusc" = {
          depends = [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "add_single" = { buildable = true; };
        "ace2contigs" = {
          depends = [ (hsPkgs."bio" or (errorHandler.buildDepError "bio")) ];
          buildable = true;
        };
        "ace2fasta" = {
          depends = [ (hsPkgs."bio" or (errorHandler.buildDepError "bio")) ];
          buildable = true;
        };
        "ace2clusters" = {
          depends = [ (hsPkgs."bio" or (errorHandler.buildDepError "bio")) ];
          buildable = true;
        };
        "clusterlibs" = {
          depends = [
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "xcerpt" = { buildable = true; };
      };
    };
  }