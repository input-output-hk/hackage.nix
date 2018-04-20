{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-parser";
          version = "0.4";
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
            hsPkgs.attoparsec
            hsPkgs.either
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.hoodle-types
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.strict
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.xournal-types
          ];
        };
      };
    }