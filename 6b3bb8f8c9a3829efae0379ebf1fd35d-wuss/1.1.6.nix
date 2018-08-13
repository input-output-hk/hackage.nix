{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wuss";
        version = "1.1.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/wuss#readme";
      url = "";
      synopsis = "Secure WebSocket (WSS) clients";
      description = "Wuss is a library that lets you easily create secure WebSocket clients over the WSS protocol. It is a small addition to <https://hackage.haskell.org/package/websockets the websockets package> and is adapted from existing solutions by <https://gist.github.com/jaspervdj/7198388 @jaspervdj>, <https://gist.github.com/mpickering/f1b7ba3190a4bb5884f3 @mpickering>, and <https://gist.github.com/elfenlaid/7b5c28065e67e4cf0767 @elfenlaid>.";
      buildType = "Simple";
    };
    components = {
      "wuss" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.network)
          (hsPkgs.websockets)
        ];
      };
    };
  }