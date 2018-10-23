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
        name = "servant-websockets";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Lorenz Moesenlechner";
      maintainer = "moesenle@gmail.com";
      author = "Lorenz Moesenlechner";
      homepage = "https://github.com/moesenle/servant-websockets#readme";
      url = "";
      synopsis = "Small library providing WebSocket endpoints for servant.";
      description = "Small library providing WebSocket endpoints for servant.";
      buildType = "Simple";
    };
    components = {
      "servant-websockets" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.exceptions)
          (hsPkgs.resourcet)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.warp)
          (hsPkgs.websockets)
        ];
      };
      exes = {
        "websocket-echo" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.servant-server)
            (hsPkgs.servant-websockets)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
        "websocket-stream" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.servant-server)
            (hsPkgs.servant-websockets)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }