{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jsaddle-warp";
          version = "0.6.0.1";
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
        jsaddle-warp = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals (!compiler.isGhcjs) [
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.http-types
            hsPkgs.jsaddle
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wai
            hsPkgs.wai-websockets
            hsPkgs.warp
            hsPkgs.websockets
          ];
        };
        tests = {
          test-tool = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optionals (!compiler.isGhcjs) [
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.jsaddle
              hsPkgs.jsaddle-warp
              hsPkgs.lens
              hsPkgs.ref-tf
              hsPkgs.primitive
              hsPkgs.process
            ];
          };
        };
      };
    }