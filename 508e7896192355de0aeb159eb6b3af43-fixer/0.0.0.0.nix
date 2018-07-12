{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fixer";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/fixer#readme";
        url = "";
        synopsis = "A Haskell client for http://fixer.io/";
        description = "Please see the README on Github at <https://github.com/NorfairKing/fixer#readme>";
        buildType = "Simple";
      };
      components = {
        "fixer" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.http-api-data
            hsPkgs.http-client
            hsPkgs.mtl
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.validity
            hsPkgs.validity-containers
            hsPkgs.validity-time
            hsPkgs.yaml
          ];
        };
        tests = {
          "fixer-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.fixer
              hsPkgs.genvalidity
              hsPkgs.genvalidity-containers
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-hspec-aeson
              hsPkgs.genvalidity-text
              hsPkgs.genvalidity-time
              hsPkgs.hspec
              hsPkgs.http-api-data
              hsPkgs.http-client
              hsPkgs.mtl
              hsPkgs.servant
              hsPkgs.servant-client
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.validity
              hsPkgs.validity-containers
              hsPkgs.validity-time
              hsPkgs.yaml
            ];
          };
        };
      };
    }