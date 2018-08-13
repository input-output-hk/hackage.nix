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
        name = "ws";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/ws#readme";
      url = "";
      synopsis = "A simple CLI utility for interacting with a websocket";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/ws#readme>";
      buildType = "Simple";
    };
    components = {
      "ws" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.attoparsec-uri)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.websockets)
          (hsPkgs.wuss)
        ];
      };
      exes = {
        "ws" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-uri)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.websockets)
            (hsPkgs.ws)
            (hsPkgs.wuss)
          ];
        };
      };
    };
  }