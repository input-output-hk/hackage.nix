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
      specVersion = "1.6";
      identifier = {
        name = "websockets";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.cc>";
      author = "Siniša Biđin";
      homepage = "";
      url = "";
      synopsis = "Create WebSocket servers";
      description = "A library for creating WebSocket-capable servers, where the implemented protocol is defined here: <http://is.gd/eSdLB>.\n\nThis library is tested with Chromium >=7, Opera >=11 and Firefox >=4 and is a work in progress.\n\nExamples of usage can be found in the Network.WebSockets module documentation.";
      buildType = "Simple";
    };
    components = {
      "websockets" = {
        depends  = [
          (hsPkgs.pureMD5)
          (hsPkgs.network)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.containers)
        ];
      };
    };
  }