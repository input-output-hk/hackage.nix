{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "safer-file-handles-bytestring";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2011 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "https://github.com/basvandijk/safer-file-handles-bytestring/";
        url = "";
        synopsis = "Extends safer-file-handles with ByteString operations";
        description = "Extends @safer-file-handles@ with @ByteString@ operations";
        buildType = "Simple";
      };
      components = {
        safer-file-handles-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.regions
            hsPkgs.transformers
            hsPkgs.explicit-iomodes-bytestring
            hsPkgs.safer-file-handles
          ];
        };
      };
    }