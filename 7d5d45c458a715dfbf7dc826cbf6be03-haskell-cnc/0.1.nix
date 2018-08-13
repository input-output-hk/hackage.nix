{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "haskell-cnc";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009-2010 Intel Corporation";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "http://software.intel.com/en-us/articles/intel-concurrent-collections-for-cc/";
      url = "";
      synopsis = "Library for parallel programming in the Intel Concurrent Collections paradigm.";
      description = "Intel (Concurrent Collections) CnC is a data-flow like\ndeterministic parallel programming model, similar to\nstream-processing but in which nodes in the computation graph share data in tables.";
      buildType = "Simple";
    };
    components = {
      "haskell-cnc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
        ];
      };
      exes = {
        "runAllTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
        };
      };
    };
  }