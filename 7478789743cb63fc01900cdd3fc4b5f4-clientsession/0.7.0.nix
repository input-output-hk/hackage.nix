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
          name = "clientsession";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/clientsession/tree/master";
        url = "";
        synopsis = "Store session data in a cookie.";
        description = "Achieves security through AES encryption and MD5 hashing.\nUses base64 encoding to avoid any issues with characters.";
        buildType = "Simple";
      };
      components = {
        "clientsession" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.crypto-api
            hsPkgs.cryptocipher
            hsPkgs.base64-bytestring
          ];
        };
        tests = {
          "runtests" = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }