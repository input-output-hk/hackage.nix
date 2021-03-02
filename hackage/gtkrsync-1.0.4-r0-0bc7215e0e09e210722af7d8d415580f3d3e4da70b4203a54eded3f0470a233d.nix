{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.0";
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."gconf" or (errorHandler.buildDepError "gconf"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "gtkrsyncp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."gconf" or (errorHandler.buildDepError "gconf"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }