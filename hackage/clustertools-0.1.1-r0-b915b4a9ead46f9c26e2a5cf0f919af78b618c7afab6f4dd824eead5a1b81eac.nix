let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "clustertools"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "Tools for manipulating sequence clusters";
      description = "This is a bunch of stuff I needed at some for manipulating sequence\nclusters. See the README for details. The tools included are:\n\n* filter - remove unwanted sequences from a clustering\n\n* hist   - produce a histogram of cluster sizes from a \"label\"-formatted clustering.\n\n* clusc  - compare clusterings, calculating numerous pair-based and entropy based indices.\n\n* add_single - add singletons to a clustering.\n\n* ace2contigs - parse an ACE assembly file, and output the contigs in a FASTA file.\n\n* ace2fasta - parse an ACE assembly, and output each assembly in a separate FASTA file\n\n* ace2clusters - parse an ACE assembly, and output clusters in TGICL format\n\n* clusterlibs - given a table of regular expressions and library names, along with a\nclustering (TGICL-format), output a table of clusters with the library name\nprepended to the sequences.\n\n* xcerpt - extract sequences from a list of sequence labels.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/cluster_tools>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "filter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."simpleargs" or (buildDepError "simpleargs"))
            ];
          };
        "clusc" = {
          depends = [ (hsPkgs."bytestring" or (buildDepError "bytestring")) ];
          };
        "add_single" = {};
        "ace2contigs" = {
          depends = [ (hsPkgs."bio" or (buildDepError "bio")) ];
          };
        "ace2fasta" = {
          depends = [ (hsPkgs."bio" or (buildDepError "bio")) ];
          };
        "ace2clusters" = {
          depends = [ (hsPkgs."bio" or (buildDepError "bio")) ];
          };
        "clusterlibs" = {
          depends = [
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            ];
          };
        "xcerpt" = {
          depends = [ (hsPkgs."haskell98" or (buildDepError "haskell98")) ];
          };
        };
      };
    }