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
        name = "magic-wormhole";
        version = "0.1.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/LeastAuthority/haskell-magic-wormhole#readme";
      url = "";
      synopsis = "Interact with Magic Wormhole";
      description = "Client library for interacting with a Magic Wormhole server.\n\nMagic Wormhole is a technology for getting things from one computer to another, safely.\nIt does this by using a server to locate peers, and then using SPAKE2 encryption to\nnegotiate a secure connection to a peer. It is especially useful for sending files\nand short messages to other humans.\n\nYou can learn more about Magic Wormhole by exploring the documentation on\nthe [canonical, Python\nimplementation](https://github.com/warner/magic-wormhole).";
      buildType = "Simple";
    };
    components = {
      "magic-wormhole" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.spake2)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.hashable)
          (hsPkgs.memory)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.pqueue)
          (hsPkgs.saltine)
          (hsPkgs.stm)
          (hsPkgs.unordered-containers)
          (hsPkgs.websockets)
        ];
      };
      exes = {
        "hocus-pocus" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.spake2)
            (hsPkgs.aeson)
            (hsPkgs.magic-wormhole)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.spake2)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.magic-wormhole)
            (hsPkgs.memory)
            (hsPkgs.process)
            (hsPkgs.saltine)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
    };
  }