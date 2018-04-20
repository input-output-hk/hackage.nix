{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "websockets-simple";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "";
        homepage = "https://github.com/athanclark/websockets-simple#readme";
        url = "";
        synopsis = "Composable websockets clients";
        description = "See README at <https://github.com/athanclark/websockets-simple#readme>";
        buildType = "Simple";
      };
      components = {
        websockets-simple = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.profunctors
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.wai-transformers
            hsPkgs.websockets
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.monad-control
              hsPkgs.profunctors
              hsPkgs.stm
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.wai-transformers
              hsPkgs.websockets
              hsPkgs.websockets-simple
            ];
          };
        };
      };
    }