{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "persistent-sqlite";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/persistent/";
        url = "";
        synopsis = "Backend for the persistent library using sqlite3.";
        description = "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.";
        buildType = "Simple";
      };
      components = {
        persistent-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.utf8-string
            hsPkgs.persistent
            hsPkgs.containers
          ];
        };
      };
    }