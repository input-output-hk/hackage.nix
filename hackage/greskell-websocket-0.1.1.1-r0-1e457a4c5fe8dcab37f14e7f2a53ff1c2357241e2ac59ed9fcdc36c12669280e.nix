{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      server-test = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "greskell-websocket";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/greskell/";
      url = "";
      synopsis = "Haskell client for Gremlin Server using WebSocket serializer";
      description = "Haskell client for [Gremlin Server](http://tinkerpop.apache.org/docs/current/reference/#gremlin-server) using WebSocket serializer.\nSee [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.\n\nThis package is based on [greskell-core](http://hackage.haskell.org/package/greskell-core),\nand best used with [greskell](http://hackage.haskell.org/package/greskell) package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.greskell-core)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.async)
          (hsPkgs.stm)
          (hsPkgs.websockets)
          (hsPkgs.hashtables)
          (hsPkgs.safe-exceptions)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.greskell-websocket)
            (hsPkgs.aeson)
            (hsPkgs.uuid)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.greskell-core)
            (hsPkgs.hspec)
          ];
        };
        "server-test" = {
          depends  = pkgs.lib.optionals (flags.server-test) [
            (hsPkgs.base)
            (hsPkgs.greskell-websocket)
            (hsPkgs.greskell-core)
            (hsPkgs.aeson)
            (hsPkgs.uuid)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.async)
            (hsPkgs.safe-exceptions)
            (hsPkgs.websockets)
            (hsPkgs.bytestring)
            (hsPkgs.stm)
            (hsPkgs.vector)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }