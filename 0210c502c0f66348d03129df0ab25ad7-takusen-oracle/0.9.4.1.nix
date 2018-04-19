{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "takusen-oracle";
          version = "0.9.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2003-2009, Alistair Bayley, Oleg Kiselyov, 2013, Pavel Ryzhov";
        maintainer = "paul@paulrz.cz";
        author = "Alistair Bayley, Oleg Kiselyov, Pavel Ryzhov";
        homepage = "https://github.com/paulrzcz/takusen-oracle.git";
        url = "https://github.com/paulrzcz/takusen-oracle.git";
        synopsis = "Database library with left-fold interface for Oracle.";
        description = "Takusen-Oracle is a Oracle access library. Like HSQL and HDBC, we support\narbitrary SQL statements (currently strings, extensible to anything\nthat can be converted to a string).\nIt is based on original Takusen library. It was just upgraded to support\nOracle 11gR2/12c instant client and GHC 7.4.2 and higher.";
        buildType = "Simple";
      };
      components = {
        takusen-oracle = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.old-time
          ];
          libs = if system.isWindows
            then [ pkgs.oci ]
            else [ pkgs.clntsh ];
        };
        exes = {
          takusen_tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.old-time
              hsPkgs.QuickCheck
              hsPkgs.random
            ] ++ pkgs.lib.optional (!(!_flags.buildtests)) hsPkgs.takusen-oracle;
          };
          miniunit_tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
            ];
          };
        };
      };
    }