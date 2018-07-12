{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pg-harness-client";
          version = "0.5.0";
        };
        license = "BSD-2-Clause";
        copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
        maintainer = "bardur@scientician.net";
        author = "Bardur Arantsson";
        homepage = "https://github.com/BardurArantsson/pg-harness";
        url = "";
        synopsis = "Client library for pg-harness-server";
        description = "Client library for <https://hackage.haskell.org/package/pg-harness-server pg-harness-server>\nfor conveniently creating temporary PostgreSQL databases for use in tests.";
        buildType = "Simple";
      };
      components = {
        "pg-harness-client" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.HTTP
          ];
        };
      };
    }