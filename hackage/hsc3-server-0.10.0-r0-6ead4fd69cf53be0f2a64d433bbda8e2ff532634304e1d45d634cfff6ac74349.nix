{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-examples = false;
    };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "hsc3-server";
        version = "0.10.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2014";
      maintainer = "kaoskorobase@gmail.com";
      author = "Stefan Kersten";
      homepage = "https://github.com/kaoskorobase/hsc3-server";
      url = "";
      synopsis = "SuperCollider server resource management and synchronization.";
      description = "This library provides abstractions for managing SuperCollider server\nresources like node, buffer and bus ids and synchronization primitives.\n\nTo get started, have a look at the <https://github.com/kaoskorobase/hsc3-server/tree/master/examples examples>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bitset)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.failure)
          (hsPkgs.hashtables)
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.hsc3-process)
          (hsPkgs.lifted-base)
          (hsPkgs.ListZipper)
          (hsPkgs.monad-control)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      exes = {
        "hsc3-hello" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.hsc3-server)
            (hsPkgs.transformers)
          ];
        };
        "hsc3-sine-grains" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.hsc3-server)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "hsc3-server-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.failure)
            (hsPkgs.hsc3-server)
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