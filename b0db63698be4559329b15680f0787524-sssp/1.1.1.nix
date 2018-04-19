{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      no-cli = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sssp";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oss@solidsnack.be";
        author = "Jason Dusek";
        homepage = "http://github.com/erudify/sssp/";
        url = "";
        synopsis = "HTTP proxy for S3.";
        description = "An HTTP proxy for S3 that generates signed URLs for GETs and PUTs and\nproxies DELETEs. A very limited form of range queries, using semantic\nversion sort and ASCII set, are supported.";
        buildType = "Simple";
      };
      components = {
        sssp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.attempt
            hsPkgs.attoparsec
            hsPkgs.aws
            hsPkgs.base64-bytestring
            hsPkgs.blaze-builder
            hsPkgs.case-insensitive
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.cryptohash
            hsPkgs.data-default
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.network-conduit
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
          ];
        };
        exes = {
          sssp = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.attempt
              hsPkgs.attoparsec
              hsPkgs.aws
              hsPkgs.base64-bytestring
              hsPkgs.blaze-builder
              hsPkgs.case-insensitive
              hsPkgs.cereal
              hsPkgs.conduit
              hsPkgs.cryptohash
              hsPkgs.data-default
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.network-conduit
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
            ];
          };
        };
      };
    }