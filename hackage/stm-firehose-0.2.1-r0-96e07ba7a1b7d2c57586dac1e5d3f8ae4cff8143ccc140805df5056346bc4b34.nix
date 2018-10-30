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
      specVersion = "1.10";
      identifier = {
        name = "stm-firehose";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "";
      url = "";
      synopsis = "Conduits and STM operations for fire hoses.";
      description = "A fire hose is a component in a message passing system that let clients tap into the message flow. This module provides low level (built on STM channels) and high level (based on conduits) building blocks. It should work with a fixed amount of memory, and has non blocking write operations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.conduit)
          (hsPkgs.network-conduit)
          (hsPkgs.stm-conduit)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.warp)
        ];
      };
      tests = {
        "test-stm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm-firehose)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }