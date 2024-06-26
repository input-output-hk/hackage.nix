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
      identifier = { name = "gnome-desktop"; version = "1.0.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2009 Colin Adams";
      maintainer = "colin@colina.demon.co.uk";
      author = "Colin Adams";
      homepage = "";
      url = "";
      synopsis = "Randomly set a picture as the GNOME desktop background";
      description = "gnome-desktop is a program for displaying random pictures on your GNOME desktop background.\nIt reads a sub-directory of $HOME (by default: Pictures) every n\nminutes (default: 1440 = once/per day) and every s seconds (default:\n50) picks a random file and sets the gconf key\n/desktop/gnome/background/picture_filename to the absolute path to\nthat file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gnome-desktop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gconf" or (errorHandler.buildDepError "gconf"))
          ];
          buildable = true;
        };
      };
    };
  }