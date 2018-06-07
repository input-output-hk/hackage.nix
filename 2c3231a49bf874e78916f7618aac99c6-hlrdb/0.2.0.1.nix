{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.0";
        identifier = {
          name = "hlrdb";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "identicalsnowflake@protonmail.com";
        author = "Identical Snowflake";
        homepage = "https://github.com/identicalsnowflake/hlrdb";
        url = "";
        synopsis = "High-level Redis Database";
        description = "A library for type-driven interaction with Redis";
        buildType = "Simple";
      };
      components = {
        hlrdb = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.hashable
            hsPkgs.hedis
            hsPkgs.hlrdb-core
            hsPkgs.memory
            hsPkgs.random
            hsPkgs.store
            hsPkgs.time
            hsPkgs.unordered-containers
          ];
        };
      };
    }