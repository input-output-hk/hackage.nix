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
    flags = { withpolysemy = true; cwndcapping = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "mptcp-pm"; version = "0.0.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "teto";
      author = "";
      homepage = "https://github.com/teto/quantum2";
      url = "";
      synopsis = "A Multipath TCP path manager";
      description = "Multipath TCP (www.multipath-tcp.org) starting from version 0.95 provides a\nnetlink path manager module. This package implements the userspace component\nin charge of controlling MPTCP subflow establishement and various behaviors.\nIt contains a set of function that is also used in [mptcpanalyzer](https://hackage.haskell.org/packages/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
          (hsPkgs."polysemy-log-co" or (errorHandler.buildDepError "polysemy-log-co"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mptcp" or (errorHandler.buildDepError "mptcp"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."bytestring-conversion" or (errorHandler.buildDepError "bytestring-conversion"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (flags.withpolysemy) (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "mptcp-pm" = {
          depends = [
            (hsPkgs."netlink" or (errorHandler.buildDepError "netlink"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-log-co" or (errorHandler.buildDepError "polysemy-log-co"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mptcp" or (errorHandler.buildDepError "mptcp"))
            (hsPkgs."mptcp-pm" or (errorHandler.buildDepError "mptcp-pm"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          ] ++ pkgs.lib.optional (flags.withpolysemy) (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"));
          buildable = true;
        };
      };
      tests = {
        "test-tcp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mptcp" or (errorHandler.buildDepError "mptcp"))
            (hsPkgs."mptcp-pm" or (errorHandler.buildDepError "mptcp-pm"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }