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
      specVersion = "1.10";
      identifier = { name = "socket"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-socket";
      url = "";
      synopsis = "A portable and extensible sockets library.";
      description = "/Motivation/\n\nThis library aims to expose a minimal and platform-independant interface for\nPOSIX compliant networking code.\n\n/Implementation Philosophy/\n\n- Every operation and every flag exposed should be supported with same\nsemantics on every platform. If this cannot be guaranteed it should\nbe supplied by another (extension) package.\nExamples for things that have been ripped out of this library are:\nUnix sockets, SCTP, vectored IO (for now).\n\n- Absolutely no conditional export.\n\n- No `#ifdef` madness in the Haskell sources. The Haskell binding code\nuses the FFI to reference the platform's native networking functions.\nIf they are not Posix compliant (i.e. under Windows) an level of\nindirection is introduced to write an Posix compliant equivalent in C\nusing whatever the plaform specific building blocks are.\n\n/Platform Support/\n\n/Linux/: Working.\n\n/BSD/: Unknown. Should work. Please report if not.\n\n/OS X/: Unknown. Please report if you have a Mac.\n\n/Windows/: Fully supported on Windows7 (maybe Vista) or higher :-)\n\nGHCs runtime system on Windows does not offer an event notification mechanism for sockets.\nThe original [network](https://hackage.haskell.org/package/network) library\nsuffers from this, too. For example, connection attempts are uninterruptible etc.\nThe approach taken to circumvent this in this library is to poll the\nnon-blocking sockets with increasing delay. This guarantees interruptability\nand fairness between different threads. It allows for decent throughput\nwhile also keeping CPU consumption on a moderate level if a socket has not seen\nevents for a longer period of time (maximum of 1 second delay after 20\npolling iterations). The only drawback is potentially reduced response time\nof your application. The good part: Heavy load (e.g. connection requests or\nincoming traffic) will reduce this problem. Eventually your accepting thread\nwon't wait at all if there are several connection requests queued.\n\nThis workaround may be removed if someone is willing to sacrifice to improve\nthe IO manager on Windows.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "UDP" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "TCP" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "TCP-sendAndRecvAll" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "PingPong" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "AddrInfo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            ];
          buildable = true;
          };
        "NonBlockingIO" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "NonBlockingIO-threaded" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "IPV6_V6ONLY" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }