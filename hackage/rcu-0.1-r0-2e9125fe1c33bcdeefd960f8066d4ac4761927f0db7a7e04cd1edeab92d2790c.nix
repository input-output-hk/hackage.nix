{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-doctests = true;
      test-hlint = true;
      unstable = false;
    };
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
      "library" = {
        depends  = [
          (hsPkgs.atomic-primops)
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.primitive)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (flags.unstable) (hsPkgs.stm);
      };
      exes = {
        "MoveStringSTM" = {
          depends  = pkgs.lib.optionals (!(!flags.unstable)) [
            (hsPkgs.base)
            (hsPkgs.rcu)
            (hsPkgs.stm)
            (hsPkgs.transformers)
          ];
        };
        "MoveStringQSBR" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rcu)
            (hsPkgs.stm)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.parallel)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }