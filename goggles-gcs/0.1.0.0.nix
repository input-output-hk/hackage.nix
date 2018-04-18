{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "goggles-gcs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Marco Zocca";
        maintainer = "zocca.marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/goggles-gcs";
        url = "";
        synopsis = "`goggles` interface to Google Cloud Storage";
        description = "`goggles` interface to Google Cloud Storage";
        buildType = "Simple";
      };
      components = {
        goggles-gcs = {
          depends  = [
            hsPkgs.base
            hsPkgs.goggles
            hsPkgs.aeson
            hsPkgs.unix-time
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.exceptions
            hsPkgs.req
          ];
        };
      };
    }