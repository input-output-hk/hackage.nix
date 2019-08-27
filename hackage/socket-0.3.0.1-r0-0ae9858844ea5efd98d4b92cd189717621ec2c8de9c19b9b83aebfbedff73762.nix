let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."ws2_32" or (sysDepError "ws2_32"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      tests = {
        "basic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."socket" or (buildDepError "socket"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        "AddrInfo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."socket" or (buildDepError "socket"))
            ];
          };
        };
      };
    }