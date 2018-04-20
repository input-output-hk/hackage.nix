{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      long-tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-quickcheck";
          version = "0.0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "";
        url = "";
        synopsis = "QuickCheck entire APIs";
        description = "This packages provides QuickCheck properties that are tested across an entire\nAPI.";
        buildType = "Simple";
      };
      components = {
        servant-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.clock
            hsPkgs.data-default-class
            hsPkgs.hspec
            hsPkgs.http-client
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.QuickCheck
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.servant-server
            hsPkgs.split
            hsPkgs.string-conversions
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.time
            hsPkgs.warp
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.servant-quickcheck
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.http-client
              hsPkgs.warp
              hsPkgs.servant-server
              hsPkgs.servant-client
              hsPkgs.servant
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-io
            ];
          };
        };
      };
    }