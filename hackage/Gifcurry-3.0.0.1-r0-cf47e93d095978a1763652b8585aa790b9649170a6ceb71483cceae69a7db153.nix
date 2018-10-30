{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Gifcurry";
        version = "3.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 David Lettier";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/gifcurry";
      url = "";
      synopsis = "GIF creation utility.";
      description = "Your open source video to GIF maker.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-gi)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-gobject)
            (hsPkgs.gi-glib)
            (hsPkgs.gi-gdk)
            (hsPkgs.gi-gtk)
            (hsPkgs.gi-cairo)
            (hsPkgs.gi-gst)
            (hsPkgs.gi-gstvideo)
            (hsPkgs.cairo)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.filepath)
            (hsPkgs.transformers)
          ];
        };
        "gifcurry_cli" = {
          depends  = [
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