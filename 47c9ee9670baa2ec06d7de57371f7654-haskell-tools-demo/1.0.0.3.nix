{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-tools-demo";
          version = "1.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kelemzol@elte.hu";
        author = "Zoltán Kelemen";
        homepage = "https://github.com/haskell-tools/haskell-tools";
        url = "";
        synopsis = "A web-based demo for Haskell-tools Refactor.";
        description = "Allows websocket clients to connect and performs refactorings on demand. The clients maintain a continous connection with the server, sending changes in the source files. When a refactor request is received, it performs the changes and sends the modified source files to the client.";
        buildType = "Simple";
      };
      components = {
        haskell-tools-demo = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.warp
            hsPkgs.wai
            hsPkgs.websockets
            hsPkgs.wai-websockets
            hsPkgs.references
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.filepath
            hsPkgs.haskell-tools-ast
            hsPkgs.haskell-tools-backend-ghc
            hsPkgs.haskell-tools-prettyprint
            hsPkgs.haskell-tools-builtin-refactorings
            hsPkgs.haskell-tools-refactor
          ];
        };
        exes = {
          ht-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-tools-demo
            ];
          };
        };
        tests = {
          haskell-tools-demo-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.network
              hsPkgs.websockets
              hsPkgs.aeson
              hsPkgs.haskell-tools-demo
            ];
          };
        };
      };
    }