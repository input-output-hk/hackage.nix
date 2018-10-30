{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "hsc3-server";
        version = "0.3.2";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bitset)
          (hsPkgs.containers)
          (hsPkgs.data-accessor)
          (hsPkgs.deepseq)
          (hsPkgs.failure)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.hsc3-process)
          (hsPkgs.strict-concurrency)
          (hsPkgs.transformers)
        ];
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