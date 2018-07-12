{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-client";
          version = "0.2.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/plow-technologies/servant-auth#readme";
        url = "";
        synopsis = "servant-client/servant-auth compatibility";
        description = "This package provides instances that allow generating clients from\n<https://hackage.haskell.org/package/servant servant>\nAPIs that use\n<https://hackage.haskell.org/package/servant-auth servant-auth's> @Auth@ combinator.\n\nFor a quick overview of the usage, see the <http://github.com/plow-technologies/servant-auth#readme README>.";
        buildType = "Simple";
      };
      components = {
        "servant-auth-client" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.servant-client
            hsPkgs.servant-auth
            hsPkgs.servant
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.servant-client
              hsPkgs.servant-auth
              hsPkgs.servant
              hsPkgs.doctest
              hsPkgs.Glob
              hsPkgs.yaml
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.servant-client
              hsPkgs.servant-auth
              hsPkgs.servant
              hsPkgs.servant-auth-client
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.servant-auth-server
              hsPkgs.servant-server
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.warp
              hsPkgs.jose
            ];
          };
        };
      };
    }