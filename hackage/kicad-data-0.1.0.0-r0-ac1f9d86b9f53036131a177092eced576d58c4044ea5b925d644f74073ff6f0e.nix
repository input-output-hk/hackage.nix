{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kicad-data"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2014";
      maintainer = "kaspar.emanuel@gmail.com";
      author = "Kaspar Emanuel";
      homepage = "http://github.com/kasbah/haskell-kicad-data";
      url = "";
      synopsis = "Parser and writer for KiCad files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."parsec-numbers" or ((hsPkgs.pkgs-errors).buildDepError "parsec-numbers"))
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
            (hsPkgs."parsec-numbers" or ((hsPkgs.pkgs-errors).buildDepError "parsec-numbers"))
            (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
            (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."pretty-compact" or ((hsPkgs.pkgs-errors).buildDepError "pretty-compact"))
            (hsPkgs."kicad-data" or ((hsPkgs.pkgs-errors).buildDepError "kicad-data"))
            ];
          buildable = true;
          };
        };
      };
    }