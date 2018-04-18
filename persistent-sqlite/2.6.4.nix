{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      systemlib = false;
      use-pkgconfig = false;
      build-sanity-exe = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "persistent-sqlite";
          version = "2.6.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/book/persistent";
        url = "";
        synopsis = "Backend for the persistent library using sqlite3.";
        description = "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.";
        buildType = "Simple";
      };
      components = {
        persistent-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.persistent
            hsPkgs.monad-control
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.conduit
            hsPkgs.monad-logger
            hsPkgs.microlens-th
            hsPkgs.resourcet
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.resource-pool
            hsPkgs.unordered-containers
          ];
          libs = pkgs.lib.optional (_flags.systemlib && !_flags.use-pkgconfig) pkgs.sqlite3 ++ pkgs.lib.optional (!system.isWindows) pkgs.pthread;
        };
        exes = {
          sanity = {
            depends  = [
              hsPkgs.base
              hsPkgs.persistent-sqlite
              hsPkgs.monad-logger
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-template
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
        };
      };
    }