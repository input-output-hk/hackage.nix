{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "sindre";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/sindre";
      url = "";
      synopsis = "A programming language for simple GUIs";
      description = "Sindre is a language inspired by Awk, meant for creating very simple\ngraphical user interfaces.";
      buildType = "Custom";
    };
    components = {
      "sindre" = {
        depends  = [
          (hsPkgs.X11)
          (hsPkgs.X11-xshape)
          (hsPkgs.X11-rm)
          (hsPkgs.mtl)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.array)
          (hsPkgs.x11-xim)
          (hsPkgs.setlocale)
          (hsPkgs.regex-pcre)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.attoparsec-text)
          (hsPkgs.permute)
          (hsPkgs.utf8-string)
        ];
        pkgconfig = [
          (pkgconfPkgs.xft)
        ];
      };
      exes = {
        "sindre" = {
          depends  = [
            (hsPkgs.X11)
            (hsPkgs.X11-xshape)
            (hsPkgs.X11-rm)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.array)
            (hsPkgs.x11-xim)
            (hsPkgs.setlocale)
            (hsPkgs.regex-pcre)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.unix)
            (hsPkgs.attoparsec-text)
            (hsPkgs.permute)
            (hsPkgs.utf8-string)
          ];
          pkgconfig = [
            (pkgconfPkgs.xft)
          ];
        };
      };
    };
  }