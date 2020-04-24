{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "augur"; version = "2008.10.20.1"; };
      license = "BSD-3-Clause";
      copyright = "2008, Lemmih";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "Lemmih <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Renaming media collections in a breeze.";
      description = "Augur is a tool for parsing and renaming TV episodes. It can recognise a wide\nvariety of formats, like: @The.4400.S04E02.DSR.XviD-ORENJi.avi@ which translates\nto @The 4400 - 4x02 - Fear Itself.avi@. Or: @24.S06E01.6AM.TO.7AM.PROPER.DVDRip.XviD-MEMETiC.avi@\nto @24 - 6x01 - Day 6: 6:00 AM - 7:00 AM.avi@. Dates are also supported as the episode number.\nThe pretty printing format is configurable with the default being @%S - %sx%2e - %E.%l@.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "augur" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."classify" or ((hsPkgs.pkgs-errors).buildDepError "classify"))
            ];
          buildable = true;
          };
        };
      };
    }