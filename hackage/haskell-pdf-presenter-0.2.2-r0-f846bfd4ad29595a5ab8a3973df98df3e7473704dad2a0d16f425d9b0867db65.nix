{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell-pdf-presenter"; version = "0.2.2"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."glib" or ((hsPkgs.pkgs-errors).buildDepError "glib"))
            (hsPkgs."poppler" or ((hsPkgs.pkgs-errors).buildDepError "poppler"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            ];
          buildable = true;
          };
        };
      };
    }