{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hoauth";
          version = "0.0.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Diego Souza <dsouza@bitforest.org>";
        author = "Diego Souza";
        homepage = "";
        url = "";
        synopsis = "A Haskell implementation of OAuth 1.0 protocol.";
        description = "This library implements both PLAINTEXT and HMAC-SHA1 signatures\nas defined in the specification 1.0. Currently it supports only\n/consumer/ related functions, but there are plans to add support\n/service providers/ as well.\nMore info at: <http://oauth.net/>";
        buildType = "Simple";
      };
      components = {
        "hoauth" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.SHA
            hsPkgs.base64-string
            hsPkgs.utf8-string
          ];
        };
        exes = {
          "test_hoauth" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.SHA
              hsPkgs.base64-string
              hsPkgs.HUnit
            ];
          };
        };
      };
    }