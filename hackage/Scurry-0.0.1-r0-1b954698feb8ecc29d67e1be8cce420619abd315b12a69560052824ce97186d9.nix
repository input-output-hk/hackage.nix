{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "network-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optional (system.isLinux) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (pkgs.lib).optional (system.isOsx || system.isFreebsd) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
          libs = (pkgs.lib).optionals (system.isWindows) [
            (pkgs."Iphlpapi" or ((hsPkgs.pkgs-errors).sysDepError "Iphlpapi"))
            (pkgs."ws2_32" or ((hsPkgs.pkgs-errors).sysDepError "ws2_32"))
            ];
          buildable = true;
          };
        };
      };
    }