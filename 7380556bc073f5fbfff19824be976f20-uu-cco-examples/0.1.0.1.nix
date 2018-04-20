{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "uu-cco-examples";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2014 Utrecht University";
        maintainer = "Atze Dijkstra <atze@uu.nl>";
        author = "Stefan Holdermans <stefan@holdermans.nl>";
        homepage = "https://github.com/UU-ComputerScience/uu-cco";
        url = "";
        synopsis = "Utilities for compiler construction: example programs";
        description = "A small utility library accompanying the course on\nCompiler Construction (INFOMCCO) at Utrecht Univerity.";
        buildType = "Custom";
      };
      components = {
        exes = {
          uu-cco-parse-arith = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-parse-arithbool = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-pp-arith = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-pp-arithbool = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-eval-arith = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-eval-arithbool = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-interp-arith = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-interp-arithbool = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-tc-arithbool = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
              hsPkgs.uuagc
              hsPkgs.uuagc-cabal
            ];
          };
          uu-cco-pp-aterm = {
            depends  = [
              hsPkgs.base
              hsPkgs.uu-cco
            ];
          };
        };
      };
    }