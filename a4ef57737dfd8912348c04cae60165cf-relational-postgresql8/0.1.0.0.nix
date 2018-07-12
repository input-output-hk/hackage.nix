{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "relational-postgresql8";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Shohei Murayama";
        maintainer = "shohei.murayama@gmail.com";
        author = "Shohei Murayama";
        homepage = "https://github.com/yuga/haskell-relational-record-driver-postgresql8";
        url = "";
        synopsis = "PostgreSQL v8.x driver for haskell-relational-record";
        description = "This package contains a driver of old PostgreSQL for haskell-relational-record.";
        buildType = "Simple";
      };
      components = {
        "relational-postgresql8" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.persistable-record
            hsPkgs.HDBC
            hsPkgs.names-th
            hsPkgs.relational-query
            hsPkgs.relational-query-HDBC
            hsPkgs.template-haskell
          ];
        };
      };
    }