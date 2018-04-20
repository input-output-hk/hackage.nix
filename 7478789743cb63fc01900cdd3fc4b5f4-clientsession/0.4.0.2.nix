{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clientsession";
          version = "0.4.0.2";
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
        clientsession = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.random
          ];
        };
        exes = {
          runtests = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }