{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-parser";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "http://ianwookim.org/hoodle";
        url = "";
        synopsis = "Hoodle file parser";
        description = "Text parser for hoodle xml file";
        buildType = "Simple";
      };
      components = {
        hoodle-parser = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.conduit
            hsPkgs.strict
            hsPkgs.attoparsec-conduit
            hsPkgs.hoodle-types
            hsPkgs.xournal-types
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.zlib-conduit
          ];
        };
      };
    }