{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      examples = false;
      tests = false;
      jsaddle = false;
    };
    package = {
      specVersion = "1.22";
      identifier = {
        name = "miso";
        version = "0.21.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018 David M. Johnson";
      maintainer = "David M. Johnson <djohnson.m@gmail.com>";
      author = "David M. Johnson <djohnson.m@gmail.com>";
      homepage = "http://github.com/dmjio/miso";
      url = "";
      synopsis = "A tasty Haskell front-end framework";
      description = "Miso is a small \"isomorphic\" Haskell front-end framework featuring a virtual-dom, diffing / patching algorithm, event delegation, event batching, SVG, Server-sent events, Websockets, type-safe servant-style routing and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril. Miso is pure by default, but side effects (like XHR) can be introduced into the system via the Effect data type. Miso makes heavy use of the GHCJS FFI and therefore has minimal dependencies.";
      buildType = "Simple";
    };
    components = {
      "miso" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ (if compiler.isGhcjs && true || flags.jsaddle
          then [
            (hsPkgs.containers)
            (hsPkgs.scientific)
            (hsPkgs.unordered-containers)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ] ++ (if flags.jsaddle
            then [
              (hsPkgs.file-embed)
              (hsPkgs.jsaddle)
            ]
            else [ (hsPkgs.ghcjs-base) ])
          else [
            (hsPkgs.lucid)
            (hsPkgs.servant-lucid)
            (hsPkgs.vector)
          ]);
      };
      exes = {
        "todo-mvc" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.miso)
            (hsPkgs.transformers)
          ];
        };
        "threejs" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.ghcjs-base)
            (hsPkgs.containers)
            (hsPkgs.miso)
          ];
        };
        "file-reader" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghcjs-base)
            (hsPkgs.miso)
          ];
        };
        "xhr" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ghcjs-base)
            (hsPkgs.miso)
          ];
        };
        "canvas2d" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.ghcjs-base)
            (hsPkgs.miso)
          ];
        };
        "router" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.miso)
            (hsPkgs.servant)
            (hsPkgs.transformers)
          ];
        };
        "websocket" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.miso)
            (hsPkgs.transformers)
          ];
        };
        "mario" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle || !flags.examples)) ([
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.miso)
            (hsPkgs.jsaddle-warp)
          ] ++ pkgs.lib.optionals (flags.jsaddle && !(compiler.isGhcjs && true)) [
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.warp)
            (hsPkgs.websockets)
          ]);
        };
        "svg" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.miso)
          ];
        };
        "compose-update" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.miso)
          ];
        };
        "mathml" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.examples)) [
            (hsPkgs.base)
            (hsPkgs.miso)
          ];
        };
        "simple" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) && !flags.jsaddle || !flags.examples)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.jsaddle-warp)
            (hsPkgs.miso)
            (hsPkgs.transformers)
          ];
        };
        "tests" = {
          depends  = pkgs.lib.optionals (!(!(compiler.isGhcjs && true) || !flags.tests)) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghcjs-base)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.miso)
            (hsPkgs.http-types)
            (hsPkgs.network-uri)
            (hsPkgs.http-api-data)
            (hsPkgs.containers)
            (hsPkgs.scientific)
            (hsPkgs.servant)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }