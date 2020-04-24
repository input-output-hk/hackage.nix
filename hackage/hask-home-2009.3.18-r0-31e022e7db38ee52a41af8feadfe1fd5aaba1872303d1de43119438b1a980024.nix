{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hask-home"; version = "2009.3.18"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert 2006";
      maintainer = "Greg Heartsfield <scsibug@imap.cc>";
      author = "Bjorn Bringert";
      homepage = "http://gregheartsfield.com/hask-home";
      url = "";
      synopsis = "Generate homepages for cabal packages";
      description = "This program generates simple homepages for cabalized\nHaskell packages.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hask-home" = {
          depends = [
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."hmarkup" or ((hsPkgs.pkgs-errors).buildDepError "hmarkup"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        "hask-home-upload" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }