{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "enumerate-function";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Spiros Boosalis";
        maintainer = "samboosalis@gmail.com";
        author = "Spiros Boosalis";
        homepage = "http://github.com/sboosali/enumerate-function#readme";
        url = "";
        synopsis = "simple package for inverting functions and testing totality, via brute enumeration of the domain";
        description = "\nsee the \"Enumerate.Function\" module for examples for documentation.\n";
        buildType = "Simple";
      };
      components = {
        "enumerate-function" = {
          depends  = [
            hsPkgs.base
            hsPkgs.enumerate
            hsPkgs.containers
            hsPkgs.semigroups
            hsPkgs.exceptions
            hsPkgs.MemoTrie
            hsPkgs.deepseq
          ];
        };
        exes = {
          "example-enumerate-function" = {
            depends  = [
              hsPkgs.base
              hsPkgs.enumerate-function
            ];
          };
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.enumerate-function
              hsPkgs.doctest
            ];
          };
          "unittest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.enumerate-function
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          "command" = {
            depends  = [
              hsPkgs.base
              hsPkgs.enumerate-function
              hsPkgs.criterion
              hsPkgs.deepseq
            ];
          };
        };
      };
    }