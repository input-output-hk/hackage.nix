{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "miso";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016 David M. Johnson";
        maintainer = "David M. Johnson <djohnson.m@gmail.com>";
        author = "David M. Johnson <djohnson.m@gmail.com>";
        homepage = "http://github.com/miso-haskell/miso";
        url = "";
        synopsis = "Haskell front-end framework";
        description = "Miso is a Haskell front-end framework featuring a virtual-dom, fast hand-rolled javascript diffing / patching algorithm, event delegation, event batching, SVG support, and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril, Miso currently supports WebSocket, Window, Mouse, History and KeysDown subscriptions. `IO` and other effects (such as `XHR`) can be introduced into the system via the `Effect` data type inside the `update` function. Pre-rendered templates and shared server-routing are made possible with servant. Minimal dependencies.";
        buildType = "Simple";
      };
      components = {
        miso = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.network-uri
            hsPkgs.text
          ] ++ (if compiler.isGhcjs
            then [
              hsPkgs.ghcjs-base
              hsPkgs.containers
              hsPkgs.scientific
              hsPkgs.unordered-containers
              hsPkgs.servant
              hsPkgs.transformers
              hsPkgs.vector
            ]
            else [
              hsPkgs.lucid
              hsPkgs.vector
            ]);
        };
        exes = {
          todo-mvc = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.miso
            ];
          };
          mario = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.miso
            ];
          };
          simple = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.miso
            ];
          };
          tests = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.miso
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.ghcjs-base
            ];
          };
        };
      };
    }