{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "blockchain";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Tyler Olson";
        maintainer = "tydotg@gmail.com";
        author = "Tyler Olson";
        homepage = "https://github.com/TGOlson/blockchain";
        url = "";
        synopsis = "Generic blockchain implementation.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        blockchain = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.either
            hsPkgs.errors
            hsPkgs.hashable
            hsPkgs.memory
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.byteable
              hsPkgs.bytestring
              hsPkgs.cryptonite
              hsPkgs.either
              hsPkgs.errors
              hsPkgs.hashable
              hsPkgs.memory
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.async
              hsPkgs.blockchain
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }