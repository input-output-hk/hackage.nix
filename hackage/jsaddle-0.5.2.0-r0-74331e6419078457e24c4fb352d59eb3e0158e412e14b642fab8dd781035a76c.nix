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
        name = "jsaddle";
        version = "0.5.2.0";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs.ghcjs-base)
            (hsPkgs.ghcjs-prim)
          ]
          else [
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.process)
            (hsPkgs.ref-tf)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
          ]);
      };
      tests = {
        "test-tool" = {
          depends  = [
            (hsPkgs.base)
          ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.jsaddle)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }