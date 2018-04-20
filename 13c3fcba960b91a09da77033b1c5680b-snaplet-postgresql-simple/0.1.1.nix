{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-postgresql-simple";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mightybyte@gmail.com";
        author = "Doug Beardsley";
        homepage = "https://github.com/mightybyte/snaplet-postgresql-simple";
        url = "";
        synopsis = "postgresql-simple snaplet for the Snap Framework";
        description = "This snaplet contains support for using the Postgresql\ndatabase with a Snap Framework application via the\npostgresql-simple package.  It also includes an\nauthentication backend.";
        buildType = "Simple";
      };
      components = {
        snaplet-postgresql-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clientsession
            hsPkgs.configurator
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.postgresql-simple
            hsPkgs.resource-pool-catchio
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }