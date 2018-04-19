{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "base58address";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "© 2013 Stephen Paul Weber";
        maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
        homepage = "https://github.com/singpolyma/base58address";
        url = "";
        synopsis = "Parsing and serialization for Base58 addresses (Bitcoin and Ripple)";
        description = "Datatypes with show and read instances that match the spec for Bitcoin\nand Ripple addresses.";
        buildType = "Simple";
      };
      components = {
        base58address = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.cryptohash
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }