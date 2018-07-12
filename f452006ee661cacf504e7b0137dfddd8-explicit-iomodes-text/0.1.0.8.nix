{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "explicit-iomodes-text";
          version = "0.1.0.8";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "https://github.com/basvandijk/explicit-iomodes-text/";
        url = "";
        synopsis = "Extends explicit-iomodes with Text operations";
        description = "Extends @explicit-iomodes@ with @Text@ operations";
        buildType = "Simple";
      };
      components = {
        "explicit-iomodes-text" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.explicit-iomodes
          ];
        };
      };
    }