{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-builder";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "text builder for hoodle file format";
        description = "This library builds text xoj format file from hoodle data structure";
        buildType = "Simple";
      };
      components = {
        hoodle-builder = {
          depends  = [
            hsPkgs.double-conversion
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.hoodle-types
            hsPkgs.lens
            hsPkgs.strict
            hsPkgs.text
          ];
        };
      };
    }