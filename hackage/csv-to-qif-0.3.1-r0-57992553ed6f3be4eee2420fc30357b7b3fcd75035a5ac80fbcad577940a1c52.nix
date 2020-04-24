{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { threaded = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "csv-to-qif"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ingolf Wagner";
      maintainer = "Ingolf Wagner <palipalo9@googlemail.com>";
      author = "Ingolf Wagner";
      homepage = "https://github.com/mrVanDalo/csv-to-qif/";
      url = "";
      synopsis = "A small program that will read csv files and create qif files";
      description = "Binary to convert a wide range of csv files to qif files.\nThe main target is to read them into GnuCash.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "csv-to-qif" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."spreadsheet" or ((hsPkgs.pkgs-errors).buildDepError "spreadsheet"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tester" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }