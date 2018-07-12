{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      test-hlint = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "structs";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/structs/";
        url = "";
        synopsis = "Strict GC'd imperative object-oriented programming with cheap pointers.";
        description = "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.";
        buildType = "Custom";
      };
      components = {
        "structs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.primitive
          ];
        };
        tests = {
          "doctests" = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.parallel
            ];
          };
          "hlint" = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }