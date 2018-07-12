{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "one-time-password";
          version = "1.0.0.1";
        };
        license = "MIT";
        copyright = "(c) 2012 Artem Leshchev, 2015 Aleksey Uimanov";
        maintainer = "s9gf4ult@gmail.com <Aleksey Uimanov>";
        author = "Artem Leshchev, Aleksey Uimanov";
        homepage = "https://github.com/s9gf4ult/one-time-password";
        url = "";
        synopsis = "HMAC-Based and Time-Based One-Time Passwords";
        description = "Implements HMAC-Based One-Time Password Algorithm as\ndefined in RFC 4226 and Time-Based One-Time Password\nAlgorithm as defined in RFC 6238.";
        buildType = "Simple";
      };
      components = {
        "one-time-password" = {
          depends  = [
            hsPkgs.base
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cryptohash
            hsPkgs.time
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.one-time-password
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.time
            ];
          };
        };
      };
    }