{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "magic-wormhole"; version = "0.2.1"; };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Least Authority TFA GmbH";
      author = "Jonathan M. Lange <jml@mumak.net>,\nRamakrishnan Muthukrishnan <ram@leastauthority.com>,\nJean-Paul Calderone <jean-paul@leastauthority.com>";
      homepage = "https://github.com/leastauthority/haskell-magic-wormhole#readme";
      url = "";
      synopsis = "Interact with Magic Wormhole";
      description = "Magic Wormhole is a scheme to get things from one computer to another,\nsafely.\n\nThis is a library for client-side interactions with a Magic Wormhole server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.hashable)
          (hsPkgs.memory)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.pqueue)
          (hsPkgs.protolude)
          (hsPkgs.saltine)
          (hsPkgs.spake2)
          (hsPkgs.stm)
          (hsPkgs.unordered-containers)
          (hsPkgs.websockets)
          ];
        };
      exes = {
        "hocus-pocus" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.magic-wormhole)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protolude)
            (hsPkgs.spake2)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.magic-wormhole)
            (hsPkgs.memory)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.saltine)
            (hsPkgs.spake2)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }