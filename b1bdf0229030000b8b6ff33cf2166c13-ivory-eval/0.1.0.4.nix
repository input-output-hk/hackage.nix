{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory-eval";
          version = "0.1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Galois, Inc.";
        maintainer = "leepike@galois.com";
        author = "Galois, Inc.";
        homepage = "http://ivorylang.org";
        url = "";
        synopsis = "Simple concrete evaluator for Ivory programs";
        description = "Warning!  This module is experimental and its implementation may change dramatically.";
        buildType = "Simple";
      };
      components = {
        "ivory-eval" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.monadLib
            hsPkgs.ivory
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.monadLib
              hsPkgs.ivory
              hsPkgs.ivory-eval
            ];
          };
        };
      };
    }