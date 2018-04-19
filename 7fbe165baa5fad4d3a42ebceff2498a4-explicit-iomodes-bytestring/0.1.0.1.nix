{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "explicit-iomodes-bytestring";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "Extends explicit-iomodes with ByteString operations";
        description = "Extends @explicit-iomodes@ with @ByteString@ operations";
        buildType = "Simple";
      };
      components = {
        explicit-iomodes-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.explicit-iomodes
          ];
        };
      };
    }