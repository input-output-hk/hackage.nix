{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ekg-elasticsearch";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ben@perurbis.com";
        author = "Ben Ford";
        homepage = "https://github.com/cdodev/ekg-elasticsearch";
        url = "";
        synopsis = "Push metrics to elasticsearch";
        description = "This library lets you push system metrics to a elasticsearch server.";
        buildType = "Simple";
      };
      components = {
        ekg-elasticsearch = {
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