{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tmp-postgres";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Jonathan Fischoff";
        maintainer = "jonathangfischoff@gmail.com";
        author = "Jonathan Fischoff";
        homepage = "https://github.com/jfischoff/tmp-postgres#readme";
        url = "";
        synopsis = "Start and stop a temporary postgres for testing";
        description = "This module provides functions greating a temporary postgres instance on a random port for testing.\n\n>\n> result <- 'start' []\n> case result of\n>   Left err -> print err\n>   Right tempDB -> do\n>     -- Do stuff\n>     'stop' tempDB\n@\n\nThe are few different methods for starting @postgres@ which provide different\nmethods of dealing with @stdout@ and @stderr@.\n\nThe start methods use a config based on the one used by [pg_tmp](http://ephemeralpg.org/), but can be overriden\nby in different values to the first argument of the start functions.";
        buildType = "Simple";
      };
      components = {
        "tmp-postgres" = {
          depends  = [
            hsPkgs.base
            hsPkgs.temporary
            hsPkgs.process
            hsPkgs.unix
            hsPkgs.directory
            hsPkgs.network
          ];
        };
        tests = {
          "tmp-postgres-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tmp-postgres
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.postgresql-simple
              hsPkgs.bytestring
            ];
          };
        };
      };
    }