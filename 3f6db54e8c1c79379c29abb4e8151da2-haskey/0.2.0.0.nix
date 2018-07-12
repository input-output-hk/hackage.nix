{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskey";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017, Henri Verroken, Steven Keuchel";
        maintainer = "steven.keuchel@gmail.com";
        author = "Henri Verroken, Steven Keuchel";
        homepage = "https://github.com/haskell-haskey";
        url = "";
        synopsis = "A transactional, ACID compliant, embeddable key-value store.";
        description = "Haskey is a transactional, ACID compliant, embeddable, scalable key-value\nstore written entirely in Haskell.\n\nFor more information on how to use this package, visit\n<https://github.com/haskell-haskey/haskey>";
        buildType = "Simple";
      };
      components = {
        "haskey" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.focus
            hsPkgs.haskey-btree
            hsPkgs.list-t
            hsPkgs.lz4
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.stm-containers
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.xxhash-ffi
          ];
        };
        tests = {
          "haskey-properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.haskey
              hsPkgs.haskey-btree
            ];
          };
          "haskey-integration" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.temporary
              hsPkgs.vector
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.haskey
              hsPkgs.haskey-btree
            ];
          };
          "haskey-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskey
              hsPkgs.haskey-btree
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.random
              hsPkgs.text
            ];
          };
        };
      };
    }