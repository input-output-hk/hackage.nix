{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-sqlite-simple";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Janne Hellsten <jjhellst@gmail.com>";
        author = "Janne Hellsten, Doug Beardsley";
        homepage = "https://github.com/nurpax/snaplet-sqlite-simple";
        url = "";
        synopsis = "sqlite-simple snaplet for the Snap Framework";
        description = "This snaplet contains support for using the SQLite\ndatabase with a Snap Framework application via the\nsqlite-simple package.  It also includes an\nauthentication backend.";
        buildType = "Simple";
      };
      components = {
        snaplet-sqlite-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.clientsession
            hsPkgs.configurator
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.sqlite-simple
            hsPkgs.direct-sqlite
            hsPkgs.resource-pool-catchio
            hsPkgs.snap
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }