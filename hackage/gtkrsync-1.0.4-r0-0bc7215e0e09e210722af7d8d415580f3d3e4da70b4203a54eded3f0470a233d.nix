{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "gtkrsync"; version = "1.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2007-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://hg.complete.org/gtkrsync";
      url = "";
      synopsis = "Gnome rsync progress display";
      description = "gtkrsync is a simple GUI that displays a running status display\nbuilt from rsync.  This status display includes a per-file and overall status\nbar, overall estimated time to completion, and an expandable button that shows\nall rsync status output.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gtkrsync" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gconf" or ((hsPkgs.pkgs-errors).buildDepError "gconf"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "gtkrsyncp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."gconf" or ((hsPkgs.pkgs-errors).buildDepError "gconf"))
            (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }