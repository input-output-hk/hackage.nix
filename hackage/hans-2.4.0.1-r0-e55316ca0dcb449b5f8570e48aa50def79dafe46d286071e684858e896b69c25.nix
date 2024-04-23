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
    flags = {
      bounded-channels = false;
      enable-tests = false;
      example = false;
      web-server = true;
      word32-in-random = false;
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "hans"; version = "2.4.0.1"; };
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
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ] ++ (if system.isHalvm
          then [
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or (errorHandler.buildDepError "HALVMCore"))
          ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ])) ++ pkgs.lib.optional (flags.bounded-channels) (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))) ++ [
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
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
          ] ++ pkgs.lib.optional (flags.bounded-channels) (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))) ++ pkgs.lib.optionals (system.isHalvm) [
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or (errorHandler.buildDepError "HALVMCore"))
          ];
          buildable = if flags.example then true else false;
        };
        "web-server" = {
          depends = pkgs.lib.optionals (!system.isHalvm) (pkgs.lib.optionals (flags.web-server) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."hans" or (errorHandler.buildDepError "hans"))
          ]);
          buildable = if system.isHalvm
            then false
            else if flags.web-server then true else false;
        };
        "tcp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."hans" or (errorHandler.buildDepError "hans"))
          ] ++ pkgs.lib.optionals (system.isHalvm) [
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or (errorHandler.buildDepError "HALVMCore"))
          ];
          buildable = true;
        };
        "echo-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."hans" or (errorHandler.buildDepError "hans"))
          ] ++ pkgs.lib.optionals (system.isHalvm) [
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
            (hsPkgs."HALVMCore" or (errorHandler.buildDepError "HALVMCore"))
          ];
          buildable = true;
        };
        "tcp-test-client" = {
          depends = pkgs.lib.optionals (!system.isHalvm) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = if system.isHalvm then false else true;
        };
        "test-suite" = {
          depends = pkgs.lib.optionals (flags.enable-tests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."hans" or (errorHandler.buildDepError "hans"))
          ];
          buildable = if flags.enable-tests then true else false;
        };
      };
    };
  }