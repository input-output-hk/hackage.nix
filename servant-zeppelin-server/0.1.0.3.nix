{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-zeppelin-server";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Martin Allen, Ben Weitzman";
        maintainer = "martin[dot]allen26[at]gmail.co";
        author = "Martin Allen, Ben Weitzman";
        homepage = "https://github.com/martyall/servant-zeppelin#readme";
        url = "";
        synopsis = "Server library for servant-zeppelin combinators.";
        description = "";
        buildType = "Simple";
      };
      components = {
        servant-zeppelin-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.http-types
            hsPkgs.singletons
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.servant-zeppelin
            hsPkgs.text
            hsPkgs.wai
          ];
        };
        tests = {
          servant-zeppelin-server-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.servant-zeppelin
              hsPkgs.servant-zeppelin-server
              hsPkgs.string-conversions
              hsPkgs.wreq
              hsPkgs.QuickCheck
              hsPkgs.warp
            ];
          };
        };
      };
    }