{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gremlin-haskell";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Daishi Nakajima";
        maintainer = "nakaji.dayo@gmail.com";
        author = "Daishi Nakajima";
        homepage = "http://github.com/nakaji-dayo/gremlin-haskell";
        url = "";
        synopsis = "Graph database client for TinkerPop3 Gremlin Server";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        gremlin-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.websockets
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.aeson-qq
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.uuid
          ];
        };
        exes = {
          gremlin-haskell-examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.gremlin-haskell
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.unordered-containers
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          gremlin-haskell-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gremlin-haskell
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.aeson-qq
              hsPkgs.mtl
              hsPkgs.hspec
            ];
          };
        };
      };
    }