{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bitcoin-block";
          version = "0.12.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Leon Mergen";
        maintainer = "leon@solatis.com";
        author = "Leon Mergen";
        homepage = "http://www.leonmergen.com/opensource.html";
        url = "";
        synopsis = "Utility functions for manipulating bitcoin blocks";
        description = "This library provides functionality for parsing, inspecting,\nhashing and serialization of bitcoin blocks.";
        buildType = "Simple";
      };
      components = {
        bitcoin-block = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.hexstring
            hsPkgs.cryptohash
            hsPkgs.largeword
            hsPkgs.bitcoin-tx
            hsPkgs.bitcoin-types
          ];
        };
        tests = {
          test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.hexstring
              hsPkgs.bitcoin-tx
              hsPkgs.bitcoin-types
              hsPkgs.bitcoin-block
            ];
          };
        };
      };
    }