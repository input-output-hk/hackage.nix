{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      poppler = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xournal-render";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "Xournal file renderer";
        description = "Rendering library using cairo for xournal file format";
        buildType = "Simple";
      };
      components = {
        xournal-render = {
          depends  = if _flags.poppler
            then [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.cairo
              hsPkgs.strict
              hsPkgs.bytestring
              hsPkgs.poppler
              hsPkgs.fclabels
              hsPkgs.xournal-types
              hsPkgs.TypeCompose
            ]
            else [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.cairo
              hsPkgs.strict
              hsPkgs.bytestring
              hsPkgs.fclabels
              hsPkgs.xournal-types
              hsPkgs.TypeCompose
            ];
        };
      };
    }