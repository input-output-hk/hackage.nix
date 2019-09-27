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
      specVersion = "1.8";
      identifier = { name = "hath"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "";
      url = "";
      synopsis = "Hath manipulates network blocks in CIDR notation.";
      description = "Hath is a Haskell program for working with network blocks in CIDR\nnotation. When dealing with blocks of network addresses, there are a\nfew things that one usually wants to do with them:\n\n* Create a regular expression matching the CIDR block(s). This is\nbecause grep will throw up if you feed it CIDR.\n\n* Combine small blocks into larger ones. For example, if you have two\nconsecutive \\/24s, they might combine into a larger \\/23.\n\n* View the result of block combination in a useful way.\n\nHath has four modes to perform these functions:\n\n[@Regexed@]\nThis computes a (Perl-compatible) regular expression matching\nthe input CIDR blocks. It's the default mode of operation.\n\n[@Reduced@]\nThis combines small blocks into larger ones where possible, and\neliminates redundant blocks. The output should be equivalent to\nthe input, though.\n\n[@Duped@]\nShows only the blocks that would be removed by reduce; that is, it\nshows the ones that would get combined into larger blocks or are\nsimply redundant.\n\n[@Diffed@]\nShows what would change if you used reduce. Uses diff-like\nnotation.\n\n/Examples/:\n\nCombine two \\/24s into a \\/23:\n\n@\n\$ hath reduced <<< \\\"10.0.0.0\\/24 10.0.1.0\\/24\\\"\n10.0.0.0/23\n@\n\nCreate a perl-compatible regex to be fed to grep:\n\n@\n\$ grep -P `hath regexed -i cidrs.txt` mail.log\n@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hath" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }