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
      specVersion = "1.6";
      identifier = { name = "cairo-appbase"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conrad@metadecks.org";
      author = "Conrad Parker, Johan Bockgård";
      homepage = "";
      url = "";
      synopsis = "Template code for an app using GTK, Glade and Cairo graphics";
      description = "This is a template for building new GUI applications. The\nGTK widget layout is done via a Glade XML file which can be\nedited visually using glade.\nThis template includes working callbacks to handle the File\nand Help menus and File Save/Open dialogs, with dummy\nhandlers for selecting filenames and the Edit menu's\ncut/copy/paste.\nThe main canvas for this application uses Cairo for\ngraphics rendering, and includes example code from the\ncairo package.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cairo-appbase" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
          buildable = true;
        };
      };
    };
  }