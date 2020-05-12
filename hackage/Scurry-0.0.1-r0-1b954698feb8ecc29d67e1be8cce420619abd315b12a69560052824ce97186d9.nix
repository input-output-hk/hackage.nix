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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-bytestring" or (errorHandler.buildDepError "network-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (system.isOsx || system.isFreebsd) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          libs = (pkgs.lib).optionals (system.isWindows) [
            (pkgs."Iphlpapi" or (errorHandler.sysDepError "Iphlpapi"))
            (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"))
            ];
          buildable = true;
          };
        };
      };
    }