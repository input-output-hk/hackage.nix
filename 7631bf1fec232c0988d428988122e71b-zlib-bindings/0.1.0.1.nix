{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "zlib-bindings";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://github.com/snoyberg/zlib-bindings";
        url = "";
        synopsis = "Low-level bindings to the zlib package.";
        description = "Provides necessary functions for producing a streaming interface. This is used for example by @zlib-conduit@ and @zlib-enum@.";
        buildType = "Simple";
      };
      components = {
        zlib-bindings = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.zlib
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.zlib
              hsPkgs.zlib-bindings
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }