{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "persistent-postgresql";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/persistent";
        url = "";
        synopsis = "Backend for the persistent library using postgresql.";
        description = "Based on the postgresql-simple package";
        buildType = "Simple";
      };
      components = {
        persistent-postgresql = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.postgresql-simple
            hsPkgs.postgresql-libpq
            hsPkgs.persistent
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.monad-control
            hsPkgs.time
            hsPkgs.aeson
            hsPkgs.conduit
          ];
        };
      };
    }