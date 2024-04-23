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
      identifier = { name = "haskell-pdf-presenter"; version = "0.2.3"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2012-2013, Michael D. Adams";
      maintainer = "Michael D. Adams <http://michaeldadams.org/>";
      author = "Michael D. Adams";
      homepage = "http://michaeldadams.org/projects/haskell-pdf-presenter/";
      url = "";
      synopsis = "Tool for presenting PDF-based presentations.";
      description = "The Haskell Pdf Presenter (\"hpdfp\") is a tool for presenting PDF-based\nslide shows.  It has many features and niceties that make delivering\na presentation easier.  For example, as a\npresenter, it is useful to see the next slide before it is shown to\nthe audience as well as how much allotted time remains.\n\nThere are a lot of features that may not be immediately obvious so\nplease be sure to look at the documentation.\nFor help with the command line, use the \"--help\" flag.\nFor help with the GUI, press the \"?\" key when the program is running.\nThe \"README\" contains a terse summary of all the features.\n\nFor more information and example uses, please visit the project home page.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpdfp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."poppler" or (errorHandler.buildDepError "poppler"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          ];
          buildable = true;
        };
      };
    };
  }