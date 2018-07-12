{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-postgresql-simple";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Ollie Charles";
        homepage = "";
        url = "";
        synopsis = "Stream postgresql-query results using the streaming library";
        description = "This package provides incremental streaming functions for the @postgresql-simple@ library.";
        buildType = "Simple";
      };
      components = {
        "streaming-postgresql-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.postgresql-libpq
            hsPkgs.postgresql-simple
            hsPkgs.resourcet
            hsPkgs.safe-exceptions
            hsPkgs.streaming
            hsPkgs.transformers
          ];
        };
      };
    }