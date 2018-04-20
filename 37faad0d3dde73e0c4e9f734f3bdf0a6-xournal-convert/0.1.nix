{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xournal-convert";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hxournal";
        url = "";
        synopsis = "convert utility for xoj files";
        description = "convert xoj files into various formats (SVG,SVG+index.html..)";
        buildType = "Simple";
      };
      components = {
        xournal-convert = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.cmdargs
            hsPkgs.HStringTemplate
            hsPkgs.xournal-types
            hsPkgs.xournal-parser
            hsPkgs.xournal-render
            hsPkgs.cairo
          ];
        };
        exes = {
          xournal-convert = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.xournal-convert
            ];
          };
        };
      };
    }