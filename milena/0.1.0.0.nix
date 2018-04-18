{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "milena";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Tyler Holien";
        maintainer = "tyler.holien@gmail.com";
        author = "Tyler Holien";
        homepage = "";
        url = "";
        synopsis = "A Kafka client for Haskell.";
        description = "Kafka client for Haskell (not recommended for production use).";
        buildType = "Simple";
      };
      components = {
        milena = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.digest
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.lens
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.milena
              hsPkgs.network
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.hspec
            ];
          };
        };
      };
    }