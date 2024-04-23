{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "network-packet-linux"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mads Rolsdorph";
      author = "Mads Rolsdorph";
      homepage = "https://github.com/rolsdorph/network-packet-linux";
      url = "";
      synopsis = "Types for working with Linux packet sockets";
      description = "@network-packet-linux@ makes it possible to use\nthe [network package](https://hackage.haskell.org/package/network)\nwith Linux packet sockets. Packet sockets are described\nin [packet (7)](https://man7.org/linux/man-pages/man7/packet.7.html).\n\n=== Usage\nCombine functions from [Network.Socket.Address](https://hackage.haskell.org/package/network/docs/Network-Socket-Address.html#g:2) with types from \"Network.Socket.Linux\" in order to\nwork with packet sockets.\n\nSee the \"Network.Socket.Linux\" module documentation or @examples/ListenToInterface.hs@ for an example.\n\n=== About the package\nAs of version 3.0.0, the @network@ package provides a socket API that is\nimplemented in terms of the 'SocketAddress' typeclass.\n@network-packet-linux@ provides 'SockAddrLl', a 'SocketAddress' instance\nthat corresponds to the @sockaddr_ll@ struct from @\\<linux/if_packet.h\\>@.\n\nAdditionally, @network-packet-linux@ provides some convenience types:\n'ProtocolId' (an enumeration of the Ethernet protocol IDs defined in\n@\\<linux/if_ether.h\\>@) and 'PacketType' (enumerating the packet types\ndefined in @\\<linux/if_packet.h\\>@).";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "listen-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-packet-linux" or (errorHandler.buildDepError "network-packet-linux"))
          ];
          buildable = true;
        };
        "socketspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-packet-linux" or (errorHandler.buildDepError "network-packet-linux"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "typespec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-packet-linux" or (errorHandler.buildDepError "network-packet-linux"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }