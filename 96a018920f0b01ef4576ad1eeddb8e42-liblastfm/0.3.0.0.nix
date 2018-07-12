{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "liblastfm";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Matvey Aksenov <matvey.aksenov@gmail.com>";
        author = "Matvey Aksenov, Dmitry Malikov";
        homepage = "";
        url = "";
        synopsis = "Lastfm API interface";
        description = "Provides interface to Lastfm REST API, supports XML and JSON formats.";
        buildType = "Simple";
      };
      components = {
        "liblastfm" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.crypto-api
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.network
            hsPkgs.pureMD5
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.void
          ];
        };
      };
    }