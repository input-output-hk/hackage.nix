{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kicad-data"; version = "0.5.0"; };
      license = "MIT";
      copyright = "2018";
      maintainer = "kaspar@monostable.co.uk";
      author = "Kaspar Emanuel";
      homepage = "http://github.com/kasbah/haskell-kicad-data";
      url = "";
      synopsis = "Parser and writer for KiCad files.";
      description = "Parse and write <http://kicad-pcb.org/ KiCad> data\n(currently @.kicad_mod@ files only).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
          (hsPkgs."pretty-compact" or ((hsPkgs.pkgs-errors).buildDepError "pretty-compact"))
          ];
        buildable = true;
        };
      tests = {
        "kicad-data-quickcheck" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."pretty-compact" or ((hsPkgs.pkgs-errors).buildDepError "pretty-compact"))
            (hsPkgs."charsetdetect" or ((hsPkgs.pkgs-errors).buildDepError "charsetdetect"))
            (hsPkgs."encoding" or ((hsPkgs.pkgs-errors).buildDepError "encoding"))
            (hsPkgs."kicad-data" or ((hsPkgs.pkgs-errors).buildDepError "kicad-data"))
            ];
          buildable = true;
          };
        };
      };
    }