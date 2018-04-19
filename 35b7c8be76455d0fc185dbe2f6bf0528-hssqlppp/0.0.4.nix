{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hssqlppp";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2009 Jake Wheat";
        maintainer = "jakewheatmail@gmail.com";
        author = "Jake Wheat";
        homepage = "https://launchpad.net/hssqlppp";
        url = "";
        synopsis = "Sql parser, pretty printer and type checker";
        description = "Sql parser, pretty printer and type checker, targets PostGreSQL SQL and PL/pgSQL, uses Parsec and UUAGC.";
        buildType = "Simple";
      };
      components = {
        hssqlppp = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.containers
          ];
        };
        exes = {
          HsSqlSystem = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.regex-posix
              hsPkgs.HDBC
              hsPkgs.HDBC-postgresql
              hsPkgs.directory
            ];
          };
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }