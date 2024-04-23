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
    flags = { bounded-channels = false; example = false; halvm = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hans"; version = "2.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "halvm-devel@community.galois.com";
      author = "Galois Inc., Peng Li, Stephan Zdancewic";
      homepage = "";
      url = "";
      synopsis = "IPv4 Network Stack";
      description = "HaNS is a lightweight, pure Haskell network stack that can be used for Haskell\nnetworking in the context of the HaLVM, or with a Linux tap device. Currently,\nHaNS supports 802.3, IPv4, ARP, DHCP (partially), ICMP, UDP, and TCP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ] ++ (if flags.halvm
          then [
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
            (hsPkgs."communication" or (errorHandler.buildDepError "communication"))
          ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ])) ++ pkgs.lib.optional (flags.bounded-channels) (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"));
        buildable = true;
      };
      exes = {
        "test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."hans" or (errorHandler.buildDepError "hans"))
          ] ++ pkgs.lib.optional (flags.bounded-channels) (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))) ++ pkgs.lib.optionals (flags.halvm) [
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
            (hsPkgs."RendezvousLib" or (errorHandler.buildDepError "RendezvousLib"))
            (hsPkgs."HALVMCore" or (errorHandler.buildDepError "HALVMCore"))
            (hsPkgs."communication" or (errorHandler.buildDepError "communication"))
          ];
          buildable = if flags.example then true else false;
        };
      };
    };
  }