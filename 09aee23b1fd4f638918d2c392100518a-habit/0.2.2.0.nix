{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "habit";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Alexander Krupenkin";
        maintainer = "mail@akru.me";
        author = "Alexander Krupenkin";
        homepage = "https://github.com/airalab/habit#readme";
        url = "";
        synopsis = "Haskell message bot framework";
        description = "Framework for building text message bots for popular platforms";
        buildType = "Simple";
      };
      components = {
        habit = {
          depends  = [
            hsPkgs.base
            hsPkgs.persistent-postgresql
            hsPkgs.persistent-template
            hsPkgs.persistent-sqlite
            hsPkgs.persistent-mysql
            hsPkgs.persistent
            hsPkgs.transformers-base
            hsPkgs.http-client-tls
            hsPkgs.monad-control
            hsPkgs.transformers
            hsPkgs.monad-logger
            hsPkgs.telegram-api
            hsPkgs.http-client
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.resourcet
            hsPkgs.pipes
            hsPkgs.text
          ];
        };
        exes = {
          hello-bot = {
            depends  = [
              hsPkgs.base
              hsPkgs.habit
              hsPkgs.text
            ];
          };
        };
      };
    }