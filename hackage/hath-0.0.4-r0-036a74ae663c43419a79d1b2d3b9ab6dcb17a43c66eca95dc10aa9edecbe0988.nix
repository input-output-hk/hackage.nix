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
      specVersion = "1.8";
      identifier = { name = "hath"; version = "0.0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "";
      url = "";
      synopsis = "Hath manipulates network blocks in CIDR notation.";
      description = "Hath is a Haskell program for working with network blocks in CIDR\nnotation. When dealing with blocks of network addresses, there are a\nfew things that one usually wants to do with them:\n\n* Create a regular expression matching the CIDR block(s). This is\nbecause grep will throw up if you feed it CIDR.\n\n* Combine small blocks into larger ones. For example, if you have two\nconsecutive \\/24s, they might combine into a larger \\/23.\n\n* View the result of block combination in a useful way.\n\n* List them.\n\n* Find their associated PTR records.\n\nHath has several modes to perform these functions:\n\n[@Regexed@]\nThis computes a (Perl-compatible) regular expression matching\nthe input CIDR blocks. It's the default mode of operation.\n\n[@Reduced@]\nThis combines small blocks into larger ones where possible, and\neliminates redundant blocks. The output should be equivalent to\nthe input, though.\n\n[@Duped@]\nShows only the blocks that would be removed by reduce; that is, it\nshows the ones that would get combined into larger blocks or are\nsimply redundant.\n\n[@Diffed@]\nShows what would change if you used reduce. Uses diff-like\nnotation.\n\n[@Listed@]\nList the IP addresses contained within the given CIDRs.\n\n[@Reversed@]\nPerform reverse DNS (PTR) lookups on the IP addresses contained\nwithin the given CIDRs.\n\n/Examples/:\n\nCombine two \\/24s into a \\/23:\n\n@\n$ hath reduced <<< \\\"10.0.0.0\\/24 10.0.1.0\\/24\\\"\n10.0.0.0/23\n@\n\nCreate a perl-compatible regex to be fed to grep:\n\n@\n$ grep -P `hath regexed -i cidrs.txt` mail.log\n@\n\nList the addresses in 192.168.0.240\\/29:\n\n@\n$ hath listed <<< \\\"192.168.0.240\\/29\\\"\n192.168.0.240\n192.168.0.241\n192.168.0.242\n192.168.0.243\n192.168.0.244\n192.168.0.245\n192.168.0.246\n192.168.0.247\n@\n\nPerform PTR lookups on all of 198.41.0.4\\/30:\n\n@\nhath reversed <<< \\\"198.41.0.4\\/30\\\"\n198.41.0.4: a.root-servers.net.\n198.41.0.5:\n198.41.0.6: rs.internic.net.\n198.41.0.7:\n@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hath" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }