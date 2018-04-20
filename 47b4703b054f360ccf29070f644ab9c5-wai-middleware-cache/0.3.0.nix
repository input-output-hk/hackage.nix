{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wai-middleware-cache";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
        author = "Alexander Dorofeev <aka.spin@gmail.com>";
        homepage = "https://github.com/akaspin/wai-middleware-cache";
        url = "";
        synopsis = "Caching middleware for WAI.";
        description = "This package provides cache middleware and abstract type for\ncreating cache backends.";
        buildType = "Simple";
      };
      components = {
        wai-middleware-cache = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder-conduit
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.crypto-conduit
            hsPkgs.http-types
            hsPkgs.pureMD5
            hsPkgs.wai
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.wai-middleware-cache
              hsPkgs.wai
              hsPkgs.bytestring
              hsPkgs.wai-test
              hsPkgs.http-types
            ];
          };
        };
      };
    }