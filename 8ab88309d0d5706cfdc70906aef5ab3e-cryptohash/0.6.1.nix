{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      cryptoapi = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cryptohash";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-cryptohash";
        url = "";
        synopsis = "collection of crypto hashes, fast, pure and practical";
        description = "A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,\nwith performance close to the fastest implementations available in others languages.\n\nThe implementations are made in C with a haskell FFI wrapper that hide the C implementation.";
        buildType = "Simple";
      };
      components = {
        cryptohash = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optionals _flags.cryptoapi [
            hsPkgs.crypto-api
            hsPkgs.tagged
            hsPkgs.cereal
          ];
        };
        exes = {
          Tests = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
            ] ++ pkgs.lib.optionals _flags.cryptoapi [
              hsPkgs.crypto-api
              hsPkgs.tagged
              hsPkgs.cereal
            ];
          };
        };
      };
    }