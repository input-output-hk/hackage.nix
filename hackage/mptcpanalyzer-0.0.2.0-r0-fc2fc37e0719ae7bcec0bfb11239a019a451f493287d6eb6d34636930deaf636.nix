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
    flags = { withpolysemy = true; dev = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "mptcpanalyzer"; version = "0.0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "teto";
      author = "Matthieu Coudron";
      homepage = "https://github.com/teto/quantum";
      url = "";
      synopsis = "A Multipath TCP analyzer";
      description = "__mptcpanalyzer__ is a multipath TCP (www.multipath-tcp.org) protocol analyzer.\nMultipath TCP is an extension of the Transmission Control Protocol that allows applications to send\none single stream of data over multiple TCP connections.\n\nThis software can automatically plot MPTCP characteristics such as Data Sequence Numbers, Data Acknowledgements etc.\nIt can also map one packet capture to another to give more detailed statistics such\nas One-Way delays and reinjection qualifications.\n\n* list the MPTCP connections in the pcap\n* display chosen statistics on a specific MPTCP connection (list of subflows, number of reinjections, etc)\n* convert packet capture files (\\*.pcap) to \\*.csv files\n* plot data sequence numbers, dataacks for all subflows\n* can map packets between the client and server pcaps to plot one-way delays";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mptcp" or (errorHandler.buildDepError "mptcp"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mptcp-pm" or (errorHandler.buildDepError "mptcp-pm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
          (hsPkgs."polysemy-log-co" or (errorHandler.buildDepError "polysemy-log-co"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          (hsPkgs."haskell-dap" or (errorHandler.buildDepError "haskell-dap"))
          (hsPkgs."ghci-dap" or (errorHandler.buildDepError "ghci-dap"))
          (hsPkgs."haskell-debug-adapter" or (errorHandler.buildDepError "haskell-debug-adapter"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.withpolysemy) (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"));
        buildable = true;
        };
      exes = {
        "mptcpanalyzer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mptcp" or (errorHandler.buildDepError "mptcp"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mptcp-pm" or (errorHandler.buildDepError "mptcp-pm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-log-co" or (errorHandler.buildDepError "polysemy-log-co"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
            (hsPkgs."haskell-dap" or (errorHandler.buildDepError "haskell-dap"))
            (hsPkgs."ghci-dap" or (errorHandler.buildDepError "ghci-dap"))
            (hsPkgs."haskell-debug-adapter" or (errorHandler.buildDepError "haskell-debug-adapter"))
            (hsPkgs."mptcpanalyzer" or (errorHandler.buildDepError "mptcpanalyzer"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (pkgs.lib).optional (flags.withpolysemy) (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"));
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mptcp" or (errorHandler.buildDepError "mptcp"))
            (hsPkgs."mptcpanalyzer" or (errorHandler.buildDepError "mptcpanalyzer"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
            (hsPkgs."polysemy-log-co" or (errorHandler.buildDepError "polysemy-log-co"))
            ];
          buildable = true;
          };
        };
      };
    }