{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-mock";
          version = "0.4.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Alp Mestanogullari";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari";
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
      };
    }