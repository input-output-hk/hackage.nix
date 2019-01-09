{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Gifcurry"; version = "2.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 David Lettier";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/gifcurry";
      url = "";
      synopsis = "GIF creation utility.";
      description = "Create animated GIFs, optionally overlaid with text, from video files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.filepath)
          ];
        };
      exes = {
        "gifcurry_gui" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-glib)
            (hsPkgs.gi-gobject)
            (hsPkgs.gi-gtk)
            (hsPkgs.gi-gdk)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ];
          };
        "gifcurry_cli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.cmdargs)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }