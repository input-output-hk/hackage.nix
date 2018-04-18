{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bitcoin-tx";
          version = "0.9.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Leon Mergen";
        maintainer = "leon@solatis.com";
        author = "Leon Mergen";
        homepage = "http://www.leonmergen.com/opensource.html";
        url = "";
        synopsis = "Utility functions for manipulating bitcoin transactions";
        description = "This library provides the same functionality as the bitcoin-tx command line\nutility, which was introduced in Bitcoin Core v0.10. These functions are\npure and require no communication with a bitcoin daemon.";
        buildType = "Simple";
      };
      components = {
        bitcoin-tx = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
            hsPkgs.binary
            hsPkgs.bitcoin-script
          ];
        };
        tests = {
          test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.bitcoin-tx
              hsPkgs.bitcoin-script
            ];
          };
        };
      };
    }