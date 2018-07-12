{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "milena";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Tyler Holien";
        maintainer = "tyler.holien@gmail.com";
        author = "Tyler Holien";
        homepage = "";
        url = "";
        synopsis = "A Kafka client for Haskell.";
        description = "A Kafka client for Haskell.\nThe protocol module is stable (the only changes will be to support changes in the Kafka protocol). The API is functional but subject to change.";
        buildType = "Simple";
      };
      components = {
        "milena" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.digest
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.lens
            hsPkgs.resource-pool
            hsPkgs.lifted-base
            hsPkgs.murmur-hash
            hsPkgs.semigroups
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.milena
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.semigroups
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }