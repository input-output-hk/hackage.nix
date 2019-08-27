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
      specVersion = "1.2.0";
      identifier = { name = "Scurry"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "John Van Enk, 2009";
      maintainer = "vanenkj@gmail.com";
      author = "John Van Enk";
      homepage = "http://code.google.com/p/scurry/";
      url = "";
      synopsis = "A cross platform P2P VPN application built using Haskell.";
      description = "P2P VPN implementation currently without any encryption.\nSupports Windows and Unix variants. Features include:\n\n* Simple NAT Traversal using UDP (similar to STUN, not the same).\n\n* Automatic address assignment to new peers\n\n* Emulates a LAN between machines\n\nNote: Scurry currently has no encryption layer or authentication\nmechanism at all. Also, the packet switching is currently\nimplemented using Data.List.lookup as opposed to something\nmore appropriate. This really isn't much of a problem until\nyou hit hundreds or thousands of peers.\n\nRequires a TAP-Win32 driver to run in Windows. Requires the tun\nmodule to be loaded to run in Linux (expects \\/dev\\/net\\/tun).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "scurry" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or (buildDepError "unix"))) ++ (pkgs.lib).optional (system.isOsx || system.isFreebsd) (hsPkgs."unix" or (buildDepError "unix"));
          libs = (pkgs.lib).optionals (system.isWindows) [
            (pkgs."Iphlpapi" or (sysDepError "Iphlpapi"))
            (pkgs."ws2_32" or (sysDepError "ws2_32"))
            ];
          };
        };
      };
    }