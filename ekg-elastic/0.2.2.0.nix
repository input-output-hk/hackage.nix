{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-elastic";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ben@perurbis.com";
        author = "Ben Ford";
        homepage = "https://github.com/cdodev/ekg-elastic";
        url = "";
        synopsis = "Push metrics to elastic";
        description = "This library lets you push system metrics to a elastic server.";
        buildType = "Simple";
      };
      components = {
        ekg-elastic = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ekg-core
            hsPkgs.aeson
            hsPkgs.hostname
            hsPkgs.http-client
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.wreq
          ];
        };
      };
    }