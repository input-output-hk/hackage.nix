{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-exactprint";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alan.zimm@gmail.com";
        author = "Alan Zimmerman";
        homepage = "";
        url = "";
        synopsis = "ExactPrint for GHC";
        description = "Using the API Annotations available from GHC 7.10 RC2, this\nlibrary provides a means to round trip any* code that can\nbe compiled by GHC\n\n* any currently excludes anything using CPP or lhs.\n\nThe dependency footprint is deliberately kept small so that\nit can easily be tested against GHC HEAD";
        buildType = "Simple";
      };
      components = {
        ghc-exactprint = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.syb
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.ghc-exactprint
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.syb
              hsPkgs.ghc-syb-utils
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.HUnit
              hsPkgs.random
            ];
          };
        };
      };
    }