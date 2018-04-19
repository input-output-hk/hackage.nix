{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bolt";
          version = "0.1.0.1";
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
        bolt = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }