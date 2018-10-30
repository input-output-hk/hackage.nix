{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ws";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A simple CLI utility for interacting with a websocket";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.websockets)
          (hsPkgs.wuss)
        ];
      };
      exes = {
        "ws" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ws)
            (hsPkgs.exceptions)
            (hsPkgs.network-uri)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }