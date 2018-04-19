{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-tools-demo";
          version = "0.2.0.0";
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
        exes = {
          haskell-tools-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.references
              hsPkgs.directory
              hsPkgs.ghc-paths
              hsPkgs.containers
              hsPkgs.http-types
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.websockets
              hsPkgs.wai-websockets
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.haskell-tools-ast
              hsPkgs.haskell-tools-ast-fromghc
              hsPkgs.haskell-tools-ast-trf
              hsPkgs.haskell-tools-prettyprint
              hsPkgs.haskell-tools-refactor
            ];
          };
        };
      };
    }