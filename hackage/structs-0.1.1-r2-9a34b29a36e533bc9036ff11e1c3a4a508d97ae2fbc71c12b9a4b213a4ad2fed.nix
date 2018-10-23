{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-doctests = true;
      test-hlint = true;
    };
    package = {
      specVersion = "1.22";
      identifier = {
        name = "structs";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2017 Edward A. Kmett";
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
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.parallel)
            (hsPkgs.structs)
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