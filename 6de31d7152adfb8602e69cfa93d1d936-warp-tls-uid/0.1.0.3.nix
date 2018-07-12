{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "warp-tls-uid";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "set group and user id before running server";
        description = "> runTLSSocketWithID tlss settings sock (\"user\", \"bob\") app";
        buildType = "Simple";
      };
      components = {
        "warp-tls-uid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.warp
            hsPkgs.wai
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.network-conduit
            hsPkgs.conduit
            hsPkgs.tls-extra
            hsPkgs.tls
            hsPkgs.certificate
            hsPkgs.pem
            hsPkgs.crypto-random
          ];
        };
        exes = {
          "testServer" = {
            depends  = [
              hsPkgs.warp-tls-uid
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.network
              hsPkgs.bytestring
              hsPkgs.network-conduit
              hsPkgs.conduit
              hsPkgs.tls-extra
              hsPkgs.tls
              hsPkgs.certificate
              hsPkgs.pem
              hsPkgs.crypto-random
              hsPkgs.http-types
            ];
          };
        };
      };
    }