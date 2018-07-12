{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pg-harness-server";
          version = "0.3.1";
        };
        license = "AGPL-3.0-only";
        copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
        maintainer = "bardur@scientician.net";
        author = "Bardur Arantsson";
        homepage = "https://github.com/BardurArantsson/pg-harness";
        url = "";
        synopsis = "REST service for creating temporary PostgreSQL databases";
        description = "REST service for conveniently creating temporary PostgreSQL databases\nfor use in tests.\n\nSee <https://github.com/BardurArantsson/pg-harness/blob/master/README.md README.md> for\ndetailed usage and setup instructions.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pg-harness" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.ini
              hsPkgs.postgresql-simple
              hsPkgs.random
              hsPkgs.scotty
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }