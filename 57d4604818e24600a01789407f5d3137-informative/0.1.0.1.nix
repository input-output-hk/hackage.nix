{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "informative";
          version = "0.1.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "m@doomanddarkness.eu";
        author = "Marvin Cohrs";
        homepage = "http://doomanddarkness.eu/pub/informative";
        url = "";
        synopsis = "A yesod subsite serving a wiki.";
        description = "";
        buildType = "Simple";
      };
      components = {
        informative = {
          depends  = [
            hsPkgs.base
            hsPkgs.yesod
            hsPkgs.text
            hsPkgs.persistent-postgresql
            hsPkgs.monad-logger
            hsPkgs.persistent
            hsPkgs.pandoc
            hsPkgs.shakespeare
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.csv
            hsPkgs.yesod-auth
            hsPkgs.http-conduit
            hsPkgs.yesod-core
          ];
        };
        exes = {
          informative-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod
              hsPkgs.text
              hsPkgs.persistent-postgresql
              hsPkgs.monad-logger
              hsPkgs.persistent
              hsPkgs.pandoc
              hsPkgs.shakespeare
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.csv
              hsPkgs.yesod-auth
              hsPkgs.http-conduit
              hsPkgs.yesod-core
            ];
          };
        };
      };
    }