{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hircules"; version = "0.3.93"; };
      license = "LicenseRef-GPL";
      copyright = "2003 Andrew J. Bromage\n2003, 2004, 2006 Jens-Ulrik Petersen <petersen@haskell.org>\n2008-2010 Jens Petersen <petersen@haskell.org>";
      maintainer = "Jens Petersen <petersen@haskell.org>";
      author = "Jens Petersen <petersen@haskell.org>";
      homepage = "";
      url = "";
      synopsis = "IRC client";
      description = "Hircules is an IRC (Internet Relay Chat) client with a gtk GUI.\nSee the old project page http://haskell.org/hircules for more info.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hircules" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        };
      };
    }