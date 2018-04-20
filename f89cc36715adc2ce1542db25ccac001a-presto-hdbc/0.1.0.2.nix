{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "presto-hdbc";
          version = "0.1.0.2";
        };
        license = "Apache-2.0";
        copyright = "Copyright (c) 2015 Dropbox, Inc.";
        maintainer = "tomm@dropbox.com";
        author = "Tom McLaughlin";
        homepage = "";
        url = "";
        synopsis = "An HDBC connector for Presto";
        description = "Uses Presto's REST API to provide an HDBC interface.";
        buildType = "Simple";
      };
      components = {
        presto-hdbc = {
          depends  = [
            hsPkgs.HDBC
            hsPkgs.HTTP
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.either
            hsPkgs.either-unwrap
            hsPkgs.errors
            hsPkgs.lens
            hsPkgs.network-uri
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.convertible
            hsPkgs.safe
            hsPkgs.http-streams
            hsPkgs.io-streams
          ];
        };
      };
    }