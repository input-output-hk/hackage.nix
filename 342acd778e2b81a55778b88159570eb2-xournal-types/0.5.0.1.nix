{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xournal-types";
          version = "0.5.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "Data types for programs for xournal file format";
        description = "Xournal file format data type including generic interface";
        buildType = "Simple";
      };
      components = {
        "xournal-types" = {
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