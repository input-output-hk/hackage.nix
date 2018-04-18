{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hoodle-types";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "Data types for programs for hoodle file format";
        description = "Hoodle file format data type including generic interface";
        buildType = "Simple";
      };
      components = {
        hoodle-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.strict
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.TypeCompose
            hsPkgs.cereal
          ];
        };
      };
    }