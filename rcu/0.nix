{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      test-hlint = true;
    } // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "rcu";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/rcu/";
        url = "";
        synopsis = "STM-based Read-Copy-Update";
        description = "STM-based Read-Copy-Update";
        buildType = "Custom";
      };
      components = {
        rcu = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
        tests = {
          doctests = {
            depends  = optionals (!(!_flags.test-doctests)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.parallel
            ];
          };
          hlint = {
            depends  = optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }