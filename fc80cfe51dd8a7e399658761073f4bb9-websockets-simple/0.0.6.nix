{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "websockets-simple";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Athan Clark";
        maintainer = "athan.clark@gmail.com";
        author = "Athan Clark";
        homepage = "https://github.com/athanclark/websockets-simple#readme";
        url = "";
        synopsis = "Simpler interface to the websockets api";
        description = "";
        buildType = "Simple";
      };
      components = {
        "websockets-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.every
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.stm
            hsPkgs.wai-transformers
            hsPkgs.websockets
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.websockets-simple
              hsPkgs.stm
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.hspec
            ];
          };
        };
      };
    }