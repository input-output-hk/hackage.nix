{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "miso";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017 David M. Johnson";
        maintainer = "David M. Johnson <djohnson.m@gmail.com>";
        author = "David M. Johnson <djohnson.m@gmail.com>";
        homepage = "http://github.com/dmjio/miso";
        url = "";
        synopsis = "A tasty Haskell front-end framework";
        description = "Miso is a small isomorphic Haskell front-end framework featuring a virtual-dom, diffing / patching algorithm, event delegation, event batching, SVG, Server-sent events, Websockets, and an extensible Subscription-based subsystem. Inspired by Elm, Redux and Bobril. `IO` and other effects (like `XHR`) can be introduced into the system via the `Effect` data type. Miso makes heavy use of the GHCJS FFI and therefore has minimal dependencies.";
        buildType = "Simple";
      };
      components = {
        "miso" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
          ] ++ (if compiler.isGhcjs && true
            then [
              hsPkgs.ghcjs-base
              hsPkgs.http-types
              hsPkgs.network-uri
              hsPkgs.http-api-data
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
          "todo-mvc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.containers
              hsPkgs.miso
            ];
          };
          "mario" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.miso
            ];
          };
          "simple" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.miso
            ];
          };
          "tests" = {
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