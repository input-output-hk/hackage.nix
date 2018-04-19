{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      scrape-bds = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pvss";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "2016 IOHK";
        maintainer = "vincent.hanquez@iohk.io";
        author = "Vincent Hanquez";
        homepage = "https://github.com/input-output-hk/pvss-haskell#readme";
        url = "";
        synopsis = "Public Verifiable Secret Sharing";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pvss = {
          depends  = [
            hsPkgs.base
            hsPkgs.memory
            hsPkgs.deepseq
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.cryptonite-openssl
            hsPkgs.foundation
            hsPkgs.integer-gmp
          ] ++ optionals _flags.scrape-bds [
            hsPkgs.mcl
            hsPkgs.vector
          ];
        };
        exes = {
          pvss-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.memory
              hsPkgs.hourglass
              hsPkgs.cryptonite
              hsPkgs.pvss
              hsPkgs.vector
            ];
          };
        };
        tests = {
          pvss-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.cryptonite
              hsPkgs.pvss
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }