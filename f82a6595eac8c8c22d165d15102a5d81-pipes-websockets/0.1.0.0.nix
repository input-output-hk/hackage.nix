{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-websockets";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016, Noon van der Silk";
        maintainer = "noonsilk@gmail.com";
        author = "Noon van der Silk";
        homepage = "https://github.com/silky/pipes-websockets#readme";
        url = "";
        synopsis = "WebSockets in the Pipes framework.";
        description = "This library provides Producers and Consumers of data\nto/from WebSocket connections.\n\nExample usage can be found in \"Pipes.WebSockets.Examples\". The executable\nproduced by this package simple runs one of the examples.\n\nImport \"Pipes.WebSockets\" to use the library.\n\nSee @CHANGELOG.md@ for changes.";
        buildType = "Simple";
      };
      components = {
        "pipes-websockets" = {
          depends  = [
            hsPkgs.base
            hsPkgs.websockets
            hsPkgs.pipes
            hsPkgs.pipes-concurrency
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          "pipes-websockets-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-websockets
            ];
          };
        };
      };
    }