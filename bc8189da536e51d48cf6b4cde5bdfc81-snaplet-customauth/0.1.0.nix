{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-customauth";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kaol@iki.fi";
        author = "Kari Pahula";
        homepage = "";
        url = "";
        synopsis = "Alternate authentication snaplet";
        description = "More customizable authentication snaplet with OAuth2 support";
        buildType = "Simple";
      };
      components = {
        snaplet-customauth = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.heist
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.errors
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.configurator
            hsPkgs.text
            hsPkgs.time
            hsPkgs.xmlhtml
            hsPkgs.binary
            hsPkgs.binary-orphans
            hsPkgs.hoauth2
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.uri-bytestring
            hsPkgs.map-syntax
            hsPkgs.random
          ];
        };
      };
    }