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
      specVersion = "3.0";
      identifier = { name = "vpn-router"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2026";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/vpn-router";
      url = "";
      synopsis = "Switch VPN with web interface for LAN";
      description = "vpn-router is a service with the web interface allowing users of a local\nnetwork to control VPN bypass from their devices. The service is tested\nwith AmneziaVPN 4.8.10.\n\n== Motivation\n#motivation#\n\nIt is convinient if the whole WiFi network is connected through VPN, but\nuser might not access some resources sometimes. Having two networks\ndeployed might be an option, though destop stations usually connect\nthrough the Ethernet cable, and such approch doubles the number of WiFi\nrouters. Hopping between WiFi networks might not be as ergonomic as it\nshould be due to bugs in the connectivity check in Android and Windows.\n\n== Installation\n#installation#\n\nThere are several ways to install the app: - with conventional Haskell\ntools directly - nix-build - download the statically link version of\n<https://github.com/yaitskov/vpn-router/releases/download/v0.0.1/vpn-router vpn-router>\nfrom github - nixos module\n\n=== NixOS module\n#nixos-module#\n\n1.  Copy\n    <https://github.com/yaitskov/vpn-router/blob/v0.0.1/nixos/vpn-router.nix vpn-router.nix>\n    to @\\/etc\\/nixos@.\n2.  Modify @\\/etc\\/nixos\\/configuration.nix@ as follows:\n\n>   imports =\n>     [ # ... ./hardware-configuration.nix\n>       ./vpn-router.nix\n>     ];\n\n>   programs = {\n>     vpn-router = {\n>       # the service will try to detect gateway and dev automatically if not specified\n>       # gateway = \"192.168.1.1\";\n>       # dev = \"wlp2s0\";\n>       # port = 3000;\n>       enable = true;\n>     };\n>   };\n\nUpdate configuration and check the new service:\n\n> nixos-rebuild switch\n> systemctl status \"vpn-router.service\"\n\nOnce the service is running open link http:\\/\\/my-router:3000\\/ on\ndevice other than the router. There is a simple UI available with a\ntoggle button to control the VPN bypass.\n\n+----------------------------------+-----------------------------------+\n| on                               | off                               |\n+==================================+===================================+\n|                                  |                                   |\n+----------------------------------+-----------------------------------+\n\nThe service can be stopped, because it only adjusts routing options in\nthe Linux kernel, but at every start all settings related to the routing\ntable and the packet mark specified in configuration will be cleared.\n\n=== Manual configuration\n#manual-configuration#\n\nNixOS module provides a service ready to go, but the standalone binary\ncan launched without configuration under sudo or by a regular user after\nsetting proper <https://unix.stackexchange.com/a/768693 capabilities> to\naccess @ip@ and @iptables@. The nixified version is shipped with these\ntools, but static elf assumes that host has these networking apps\npre-installed.\n\n> Usage: vpn-router run [-d|--dev ARG] [-g|--gateway ARG] [-t|--routing-table ARG]\n>                       [-m|--packet-mark ARG] [-p|--port PORT]\n>\n>    launch the service exposed over HTTP\n>\n> Available options:\n>   -d,--dev ARG             network device name connected to the Internet\n>                            (default: \"wlp2s0\")\n>   -g,--gateway ARG         network device name connected to the Internet\n>                            (default: 192.168.1.1)\n>   -t,--routing-table ARG   routing table id (default: 7)\n>   -m,--packet-mark ARG     packet mark (default: 2)\n>   -p,--port PORT           HTTP port to listen (default: 3000)\n>   -h,--help                Show this help text\n\nDefault values for gateway and device are dynamically detected.\n\n== Development environment\n#development-environment#\n\nHLS should be available inside the dev environment.\n\n> $ nix-shell\n> $ emacs src/VpnRouter/Net.hs &\n> $ cabal build\n> $ cabal test\n\n> $ nix-build\n> $ sudo ./result/bin/vpn-router run\n\n== Static linking\n#static-linking#\n\nStatic is not enabled by default, because GitHub CI job times out.\n\n> nix-build --arg staticBuild true\n> # faster build on beefy machine\n> nix-build --cores 20 -j 20 --arg staticBuild true";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
          (hsPkgs."typelits-printf" or (errorHandler.buildDepError "typelits-printf"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
      exes = {
        "vpn-router" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."vpn-router" or (errorHandler.buildDepError "vpn-router"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."vpn-router" or (errorHandler.buildDepError "vpn-router"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }