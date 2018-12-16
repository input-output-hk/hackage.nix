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
        name = "hath";
        version = "0.4.2";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "http://michael.orlitzky.com/code/hath.xhtml";
      url = "";
      synopsis = "Hath manipulates network blocks in CIDR notation.";
      description = "Hath is a Haskell program for working with network blocks in CIDR\nnotation. When dealing with blocks of network addresses, there are a\nfew things that one usually wants to do with them:\n\n* Create a regular expression matching the CIDR block(s). This is\nbecause grep will throw up if you feed it CIDR.\n\n* Combine small blocks into larger ones. For example, if you have two\nconsecutive \\/24s, they might combine into a larger \\/23.\n\n* View the result of block combination in a useful way.\n\n* List them.\n\nHath has several modes to perform these functions:\n\n[@Regexed@]\nThis computes a (Perl-compatible) regular expression matching\nthe input CIDR blocks. It's the default mode of operation.\n\n[@Reduced@]\nThis combines small blocks into larger ones where possible, and\neliminates redundant blocks. The output should be equivalent to\nthe input, though.\n\n[@Duped@]\nShows only the blocks that would be removed by reduce; that is, it\nshows the ones that would get combined into larger blocks or are\nsimply redundant.\n\n[@Diffed@]\nShows what would change if you used reduce. Uses diff-like\nnotation.\n\n[@Listed@]\nList the IP addresses contained within the given CIDRs.\n\n/Examples/:\n\nCompute a (Perl-compatible) regular expression matching\nthe input CIDR blocks. It's the default mode of operation.\n\n@\n\$ echo \\\"10.0.0.0\\/29 10.0.0.8\\/29\\\" | hath\n((10)\\.(0)\\.(0)\\.(15|14|13|12|11|10|9|8|7|6|5|4|3|2|1|0))\n@\n\nCombine two \\/24s into a \\/23:\n\n@\n\$ echo \\\"10.0.0.0\\/24 10.0.1.0\\/24\\\" | hath reduced\n10.0.0.0/23\n@\n\nList the addresses in 192.168.0.240\\/29:\n\n@\n\$ echo 192.168.0.240\\/29 | hath listed\n192.168.0.240\n192.168.0.241\n192.168.0.242\n192.168.0.243\n192.168.0.244\n192.168.0.245\n192.168.0.246\n192.168.0.247\n@\n\nThe command-line syntax and complete set of options are documented in\nthe man page.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hath" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
        "shelltests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }