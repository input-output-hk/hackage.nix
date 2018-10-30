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
        name = "hcoap";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ulf.lilleengen@gmail.com";
      author = "Ulf Lilleengen";
      homepage = "https://github.com/lulf/hcoap";
      url = "";
      synopsis = "CoAP implementation for Haskell.";
      description = "CoAP library for writing CoAP clients, servers or just for decoding and encoding\nCoAP messages. The Network.CoAP.Server and Network.CoAP.Client modules allows\nbuilding CoAP servers and clients on top of a messaging layer which provides\nreliable transport of CoAP requests/responses.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.async)
        ];
      };
      exes = {
        "hcoap-example-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.hcoap)
          ];
        };
        "hcoap-example-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.hcoap)
          ];
        };
      };
      tests = {
        "hcoap-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hcoap)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.random)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }