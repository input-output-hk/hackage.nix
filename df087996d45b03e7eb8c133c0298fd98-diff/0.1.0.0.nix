{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diff";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 M Farkas-Dyck";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Diff and patch";
        description = "";
        buildType = "Simple";
      };
      components = {
        "diff" = {
          depends  = [
            hsPkgs.Enum
            hsPkgs.base
            hsPkgs.util
          ];
        };
      };
    }