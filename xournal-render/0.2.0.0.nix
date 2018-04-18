{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xournal-render";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "Xournal file renderer";
        description = "Xournal file renderer";
        buildType = "Simple";
      };
      components = {
        xournal-render = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.xournal-parser
            hsPkgs.cairo
            hsPkgs.strict
            hsPkgs.bytestring
          ];
        };
      };
    }