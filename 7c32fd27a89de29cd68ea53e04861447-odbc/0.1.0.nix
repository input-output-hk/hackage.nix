{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "odbc";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "FP Complete 2018";
        maintainer = "chrisdone@fpcomplete.com";
        author = "";
        homepage = "https://github.com/fpco/odbc";
        url = "";
        synopsis = "Haskell binding to the ODBC API, aimed at SQL Server driver";
        description = "Haskell binding to the ODBC API. This has been tested\nagainst the Microsoft SQL Server ODBC drivers. Its test\nsuite runs on OS X, Windows and Linux.";
        buildType = "Simple";
      };
      components = {
        odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.unliftio-core
            hsPkgs.formatting
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.template-haskell
            hsPkgs.parsec
          ];
          libs = if system.isWindows || system.isWindows
            then [ pkgs.odbc32 ]
            else [ pkgs.odbc ];
        };
        exes = {
          odbc = {
            depends  = [
              hsPkgs.base
              hsPkgs.odbc
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.odbc
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.parsec
            ];
          };
        };
        benchmarks = {
          space = {
            depends  = [
              hsPkgs.base
              hsPkgs.odbc
              hsPkgs.weigh
              hsPkgs.text
              hsPkgs.async
            ];
          };
        };
      };
    }