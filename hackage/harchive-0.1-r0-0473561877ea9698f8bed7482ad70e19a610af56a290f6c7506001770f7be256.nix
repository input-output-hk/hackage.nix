{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "harchive"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) David Brown";
      maintainer = "David Brown <harchive@davidb.org>";
      author = "David Brown <harchive@davidb.org>";
      homepage = "http://www.davidb.org/darcs/harchive/";
      url = "";
      synopsis = "Networked content addressed backup and restore software.";
      description = "Implements software to perform backups and restores of filesystem\ndata to a content addressed storage pool.  Very preliminary version.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "hfile" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          libs = [ (pkgs."ssl" or ((hsPkgs.pkgs-errors).sysDepError "ssl")) ];
          buildable = true;
          };
        "hpool" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          libs = [
            (pkgs."ssl" or ((hsPkgs.pkgs-errors).sysDepError "ssl"))
            (pkgs."sqlite3" or ((hsPkgs.pkgs-errors).sysDepError "sqlite3"))
            ];
          buildable = true;
          };
        };
      };
    }