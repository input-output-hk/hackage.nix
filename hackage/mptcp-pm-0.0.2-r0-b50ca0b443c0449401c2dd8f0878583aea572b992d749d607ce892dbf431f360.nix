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
    flags = { dev = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "mptcp-pm"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "teto";
      author = "";
      homepage = "https://github.com/teto/netlink_pm";
      url = "";
      synopsis = "A work in progress Multipath TCP path manager";
      description = "Multipath TCP (www.multipath-tcp.org) starting from version 0.95 provides a\nnetlink path manager module. This package implements the userspace part to allow\nuserspace daemons to control MPTCP behavior.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mptcp-pm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"))
            (hsPkgs."bytestring-conversion" or (errorHandler.buildDepError "bytestring-conversion"))
            (hsPkgs."c2hsc" or (errorHandler.buildDepError "c2hsc"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ (pkgs.lib).optional (flags.dev) (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"));
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
            (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
            ];
          buildable = true;
          };
        };
      };
    }