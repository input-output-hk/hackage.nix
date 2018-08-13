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
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "2015 Taylor Fausak <taylor@fausak.me>";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "Taylor Fausak <taylor@fausak.me>";
      homepage = "http://taylor.fausak.me/wuss/";
      url = "";
      synopsis = "Secure WebSocket (WSS) clients";
      description = "Wuss is a library that lets you easily create secure WebSocket clients over\nthe WSS protocol.\n\nPlease read <https://github.com/tfausak/wuss#readme the readme> for example\nusage.";
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
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.wuss)
          ];
        };
      };
    };
  }