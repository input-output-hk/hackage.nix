{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-mock";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://github.com/haskell-servant/servant";
        url = "";
        synopsis = "Derive a mock server for free from your servant API types";
        description = "Derive a mock server for free from your servant API types\n\nSee the @Servant.Mock@ module for the documentation and an example.";
        buildType = "Simple";
      };
      components = {
        servant-mock = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.transformers
            hsPkgs.QuickCheck
            hsPkgs.wai
          ];
        };
        exes = {
          mock-app = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.servant-mock
              hsPkgs.servant-server
              hsPkgs.QuickCheck
              hsPkgs.warp
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-wai
              hsPkgs.QuickCheck
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.servant-mock
              hsPkgs.aeson
              hsPkgs.bytestring-conversion
              hsPkgs.wai
            ];
          };
        };
      };
    }