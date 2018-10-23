{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      build-examples = false;
    };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "hsc3-server";
        version = "0.4.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2012";
      maintainer = "Stefan Kersten";
      author = "Stefan Kersten";
      homepage = "http://space.k-hornz.de/software/hsc3-server";
      url = "";
      synopsis = "SuperCollider server resource management and synchronization.";
      description = "This library provides abstractions for managing SuperCollider server\nresources like node, buffer and bus ids and synchronization primitives.\n\nChangeLog: <https://github.com/kaoskorobase/hsc3-server/blob/master/ChangeLog.md>\n\nExamples: <https://github.com/kaoskorobase/hsc3-server/tree/master/examples>";
      buildType = "Simple";
    };
    components = {
      "hsc3-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bitset)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.failure)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.hsc3-process)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.strict-concurrency)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      exes = {
        "hsc3-hello" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bitset)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.failure)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.hsc3-process)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.resourcet)
            (hsPkgs.strict-concurrency)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
          ];
        };
        "hsc3-sine-grains" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bitset)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.failure)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.hsc3-process)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.strict-concurrency)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "hsc3-server-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bitset)
            (hsPkgs.deepseq)
            (hsPkgs.failure)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }