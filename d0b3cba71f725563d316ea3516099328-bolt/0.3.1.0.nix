{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bolt";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Shaun Sharples";
        maintainer = "shaun.sharples@gmail.com";
        author = "Shaun Sharples";
        homepage = "https://github.com/bflyblue/bolt#readme";
        url = "";
        synopsis = "Bolt driver for Neo4j";
        description = "A Bolt driver to access Neo4j databases using\nthe Bolt Protocol, Version 1. <http://boltprotocol.org/v1/>";
        buildType = "Simple";
      };
      components = {
        "bolt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bolt
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }