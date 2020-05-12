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
      identifier = { name = "socket"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-socket";
      url = "";
      synopsis = "A portable and extensible sockets library.";
      description = "__Motivation__\n\nThis library aims to expose a minimal and platform-independant interface for\nPOSIX compliant networking code.\n\n__Implementation Philosophy__\n\n- Every operation and every flag exposed should be supported with same\nsemantics on every platform. If this cannot be guaranteed it should\nbe supplied by another (extension) package.\nExamples for things that have been ripped out of this library are:\nUnix sockets, SCTP, vectored IO (for now).\n\n- Absolutely no conditional export.\n\n- No `#ifdef` madness in the Haskell sources. The Haskell binding code\nuses the FFI to reference the platform's native networking functions.\nIf they are not Posix compliant (i.e. under Windows) an level of\nindirection is introduced to write an Posix compliant equivalent in C\nusing whatever the plaform specific building blocks are.\n\n__Platform Support__\n\n/Linux/\n\nWorking.\n\n/BSD/\n\nUnknown. Should work. Please report if not.\n\n/MacOS/\n\nUnknown. Please report if you have a Mac.\n\n/Windows/\n\nUnfinished (problem with non-blocking IO).\n\nAim: Support Windows7 or higher. Don't have dependencies on autotools, just\nHaskell Platform with MinGW should suffice.\n\n/Android/\n\nUnknown. Should be supported. Please get in touch if you plan to use it.";
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
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "basic" = {
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
        };
      };
    }