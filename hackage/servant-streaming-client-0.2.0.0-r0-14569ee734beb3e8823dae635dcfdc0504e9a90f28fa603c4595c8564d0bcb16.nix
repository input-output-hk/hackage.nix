{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-streaming-client";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/plow-technologies/servant-streaming#readme";
      url = "";
      synopsis = "Client instances for the 'servant-streaming' package.";
      description = "This package defines instances that allow using the 'StreamBody' and 'StreamResponse' combinators in 'servant' clients.";
      buildType = "Simple";
    };
    components = {
      "servant-streaming-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.resourcet)
          (hsPkgs.servant)
          (hsPkgs.servant-client-core)
          (hsPkgs.servant-streaming)
          (hsPkgs.streaming)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-media)
            (hsPkgs.http-types)
            (hsPkgs.resourcet)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.servant-client-core)
            (hsPkgs.servant-server)
            (hsPkgs.servant-streaming)
            (hsPkgs.servant-streaming-client)
            (hsPkgs.servant-streaming-server)
            (hsPkgs.streaming)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }