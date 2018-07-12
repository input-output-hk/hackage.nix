{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crypto-simple";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Risto Stevcev";
        maintainer = "example@example.com";
        author = "Risto Stevcev";
        homepage = "https://github.com/Risto-Stevcev/haskell-crypto-simple#readme";
        url = "";
        synopsis = "A simple high level encryption interface based on cryptonite";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "crypto-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cryptonite
          ];
        };
        tests = {
          "crypto-simple-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.crypto-simple
              hsPkgs.bytestring
              hsPkgs.cryptonite
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }