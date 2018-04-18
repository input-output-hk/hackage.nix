{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-doctests = true;
      test-hlint = true;
      unstable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "rcu";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Edward A. Kmett, Theodore Rhys Cooper";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>, Ted Cooper <anthezium@gmail.com>";
        author = "Ted Cooper and Edward A. Kmett";
        homepage = "http://github.com/ekmett/rcu/";
        url = "";
        synopsis = "Read-Copy-Update for Haskell";
        description = "Read-Copy-Update for Haskell";
        buildType = "Custom";
      };
      components = {
        rcu = {
          depends  = [
            hsPkgs.atomic-primops
            hsPkgs.base
            hsPkgs.parallel
            hsPkgs.primitive
            hsPkgs.transformers
          ] ++ pkgs.lib.optional _flags.unstable hsPkgs.stm;
        };
        exes = {
          MoveStringSTM = {
            depends  = optionals (!(!_flags.unstable)) [
              hsPkgs.base
              hsPkgs.rcu
              hsPkgs.stm
              hsPkgs.transformers
            ];
          };
          MoveStringQSBR = {
            depends  = [
              hsPkgs.base
              hsPkgs.rcu
              hsPkgs.stm
              hsPkgs.transformers
            ];
          };
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