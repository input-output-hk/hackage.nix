{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-streaming-server";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Julian K. Arni";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "http://github.com/plow-technologies/servant-streaming-server#readme";
        url = "";
        synopsis = "Server instances for the 'servant-streaming' package.";
        description = "This package defines instances that allow using the 'StreamBody' and 'StreamResponse' combinators in 'servant' servers.";
        buildType = "Simple";
      };
      components = {
        "servant-streaming-server" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.resourcet
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.servant-streaming
            hsPkgs.streaming
            hsPkgs.streaming-wai
            hsPkgs.wai
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.http-media
              hsPkgs.http-types
              hsPkgs.pipes
              hsPkgs.pipes-http
              hsPkgs.resourcet
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.servant-streaming
              hsPkgs.servant-streaming-server
              hsPkgs.streaming
              hsPkgs.streaming-bytestring
              hsPkgs.streaming-wai
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }