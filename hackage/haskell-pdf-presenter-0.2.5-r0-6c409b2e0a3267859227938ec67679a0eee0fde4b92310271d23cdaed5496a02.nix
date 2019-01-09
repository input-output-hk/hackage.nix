{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "haskell-pdf-presenter"; version = "0.2.5"; };
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
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.template-haskell)
            (hsPkgs.zlib)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.glib)
            (hsPkgs.poppler)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            ];
          };
        };
      };
    }