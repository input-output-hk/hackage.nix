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
        name = "jsaddle-warp";
        version = "0.8.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "Interface for JavaScript that works with GHCJS and GHC";
      description = "This package provides an EDSL for calling JavaScript that\ncan be used both from GHCJS and GHC.  When using GHC\nthe application is run using Warp and WebSockets to\ndrive a small JavaScipt helper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.http-types)
          (hsPkgs.jsaddle)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.warp)
          (hsPkgs.websockets)
        ];
      };
      tests = {
        "test-tool" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.ghc-prim)
            (hsPkgs.http-types)
            (hsPkgs.jsaddle)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.ref-tf)
            (hsPkgs.primitive)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.webdriver)
            (hsPkgs.websockets)
            (hsPkgs.base)
          ];
        };
      };
    };
  }