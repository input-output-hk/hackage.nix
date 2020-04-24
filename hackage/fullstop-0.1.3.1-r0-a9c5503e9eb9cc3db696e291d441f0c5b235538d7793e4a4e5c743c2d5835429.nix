{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fullstop"; version = "0.1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <kowey@comp-ling.com>";
      author = "Eric Kow";
      homepage = "http://hub.darcs.net/kowey/fullstop";
      url = "";
      synopsis = "Simple sentence segmenter";
      description = "FullStop splits texts into sentences, using some orthographical\nconventions (used in English and hopefully other languages).\n\nIt recognises certain punctuation characters as sentence\ndelimiters (@.?!@) and handles some abbreviations such as\n@Mr.@ and decimal numbers (eg. @4.2@).\n\nNote that this package is mostly a placeholder.  I hope\nthe Haskell/NLP communities will run with it and upload\na more sophisticated (family of) segmenter(s) in its\nplace.  Patches (and new maintainers) would be greeted\nwith delight!";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "fullstop" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fullstop" or ((hsPkgs.pkgs-errors).buildDepError "fullstop"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hstest-fullstop" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fullstop" or ((hsPkgs.pkgs-errors).buildDepError "fullstop"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }