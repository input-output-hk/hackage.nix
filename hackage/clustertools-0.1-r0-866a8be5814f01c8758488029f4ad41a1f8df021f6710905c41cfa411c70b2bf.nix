{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "clustertools"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@ii.uib.no>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "Tools for manipulating sequence clusters";
      description = "This is a bunch of stuff I needed at some for manipulating sequence\nclusters. See the README for details. The tools included are:\n\n* filter - remove unwanted sequences from a clustering\n\n* hist   - produce a histogram of cluster sizes from a \"label\"-formatted clustering.\n\n* clusc  - compare clusterings, calculating numerous pair-based and entropy based indices.\n\n* add_single - add singletons to a clustering.\n\n* ace2contigs - parse an ACE assembly file, and output the contigs in a FASTA file.\n\n* ace2fasta - parse an ACE assembly, and output each assembly in a separate FASTA file\n\n* clusterlibs - given a table of regular expressions and library names, along with a\nclustering (TGICL-format), output a table of clusters with the library name\nprepended to the sequences.\n\nThe Darcs repository is at: <http://malde.org/~ketil/cluster_tools>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "filter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."simpleargs" or ((hsPkgs.pkgs-errors).buildDepError "simpleargs"))
            ];
          buildable = true;
          };
        "clusc" = {
          depends = [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "add_single" = { buildable = true; };
        "ace2contigs" = {
          depends = [
            (hsPkgs."bio" or ((hsPkgs.pkgs-errors).buildDepError "bio"))
            ];
          buildable = true;
          };
        "ace2fasta" = { buildable = true; };
        "clusterlibs" = {
          depends = [
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            ];
          buildable = true;
          };
        };
      };
    }