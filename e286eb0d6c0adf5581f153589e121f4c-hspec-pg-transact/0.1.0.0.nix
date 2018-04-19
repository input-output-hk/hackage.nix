{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-pg-transact";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Jonathan Fischoff";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/hspec-pg-transact#readme";
        url = "";
        synopsis = "Helpers for creating database tests with hspec and pg-transact";
        description = "Helpers for creating database tests with hspec and pg-transact";
        buildType = "Simple";
      };
      components = {
        hspec-pg-transact = {
          depends  = [
            hsPkgs.base
            hsPkgs.hspec
            hsPkgs.tmp-postgres
            hsPkgs.postgresql-simple
            hsPkgs.pg-transact
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.resource-pool
          ];
        };
      };
    }