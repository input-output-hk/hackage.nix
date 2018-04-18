{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "higher-leveldb";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@jeremyhuffman.com";
        author = "Jeremy Huffman";
        homepage = "https://github.com/jeremyjh/higher-leveldb";
        url = "";
        synopsis = "A rich monadic API for working with leveldb databases.";
        description = "A rich monadic API for working with leveldb databases.";
        buildType = "Simple";
      };
      components = {
        higher-leveldb = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.lifted-base
            hsPkgs.leveldb-haskell
            hsPkgs.bytestring
            hsPkgs.resourcet
            hsPkgs.transformers-base
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.data-default
            hsPkgs.transformers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.higher-leveldb
              hsPkgs.hspec
              hsPkgs.resourcet
              hsPkgs.leveldb-haskell
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.monad-control
              hsPkgs.transformers-base
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.lifted-base
            ];
          };
        };
      };
    }