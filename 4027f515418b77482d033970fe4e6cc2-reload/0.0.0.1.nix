{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reload";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 JP Moresmau";
        maintainer = "jpmoresmau@gmail.com";
        author = "JP Moresmau";
        homepage = "https://github.com/jpmoresmau/reload#readme";
        url = "";
        synopsis = "A web based Haskell IDE";
        description = "Provides a web based Haskell IDE, on top of Ghcid";
        buildType = "Simple";
      };
      components = {
        reload = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.scotty
            hsPkgs.wai
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mime-types
            hsPkgs.transformers
            hsPkgs.wai-handler-launch
            hsPkgs.wai-middleware-static
            hsPkgs.wai-extra
            hsPkgs.http-types
            hsPkgs.websockets
            hsPkgs.wai-websockets
            hsPkgs.warp
            hsPkgs.ghcid
            hsPkgs.Cabal
            hsPkgs.data-default
            hsPkgs.process
            hsPkgs.async
            hsPkgs.data-default
          ];
        };
        exes = {
          reload-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.reload
            ];
          };
        };
        tests = {
          reload-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.hspec-wai-json
              hsPkgs.aeson
              hsPkgs.scotty
              hsPkgs.wai
              hsPkgs.text
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.mime-types
              hsPkgs.transformers
              hsPkgs.wai-handler-launch
              hsPkgs.wai-middleware-static
              hsPkgs.wai-extra
              hsPkgs.http-types
              hsPkgs.websockets
              hsPkgs.wai-websockets
              hsPkgs.warp
              hsPkgs.ghcid
              hsPkgs.Cabal
              hsPkgs.unordered-containers
              hsPkgs.process
              hsPkgs.async
              hsPkgs.data-default
            ];
          };
        };
      };
    }