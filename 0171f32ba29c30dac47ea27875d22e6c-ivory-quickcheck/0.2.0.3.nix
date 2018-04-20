{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory-quickcheck";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Galois, Inc.";
        maintainer = "leepike@galois.com";
        author = "Galois, Inc.";
        homepage = "http://ivorylang.org";
        url = "";
        synopsis = "QuickCheck driver for Ivory.";
        description = "Warning!  This module is experimental and its implementation may change dramatically.";
        buildType = "Simple";
      };
      components = {
        ivory-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.monadLib
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.ivory
            hsPkgs.ivory-backend-c
            hsPkgs.ivory-eval
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.monadLib
              hsPkgs.QuickCheck
              hsPkgs.ivory
              hsPkgs.ivory-backend-c
              hsPkgs.ivory-quickcheck
              hsPkgs.ivory-stdlib
            ];
          };
        };
      };
    }