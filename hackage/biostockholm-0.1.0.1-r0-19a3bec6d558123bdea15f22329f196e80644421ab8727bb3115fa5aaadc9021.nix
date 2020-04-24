{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "biostockholm"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Lessa";
      homepage = "";
      url = "";
      synopsis = "Reading and writing Stockholm files (multiple sequence alignment, used by Rfam and Infernal).";
      description = "Parsing and pretty printing of files in Stockholm 1.0 format.  See:\n\n* <http://sonnhammer.sbc.su.se/Stockholm.html>\n\n* <ftp://ftp.sanger.ac.uk/pub/databases/Pfam/current_release/relnotes.txt>\n\n* <http://en.wikipedia.org/wiki/Stockholm_format>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."biocore" or ((hsPkgs.pkgs-errors).buildDepError "biocore"))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."biocore" or ((hsPkgs.pkgs-errors).buildDepError "biocore"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }