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
      identifier = { name = "chainweb-mining-client"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 - 2020, Kadena LLC";
      maintainer = "lars@kadena.io";
      author = "Lars Kuhtz";
      homepage = "https://github.com/kadena-io/chainweb-mining-client";
      url = "";
      synopsis = "Mining Client for Kadena Chainweb";
      description = "A mining client for Kadena Chainweb. It supports\n\n* multi threaded CPU mining,\n* external mining workers (e.g. a GPU),\n* simulated mining for testing.\n\nCompetitive mining on the Kadena Chainweb Mainnet requires special mining\nhardware, which usually comes with its own mining client and mining pool\nsupport implementations. This generic mining client is intended mostly for\ntesting.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.configuration-tools or (pkgs.buildPackages.configuration-tools or (errorHandler.setupDepError "configuration-tools")))
      ];
    };
    components = {
      exes = {
        "chainweb-mining-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."configuration-tools" or (errorHandler.buildDepError "configuration-tools"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hostaddress" or (errorHandler.buildDepError "hostaddress"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."loglevel" or (errorHandler.buildDepError "loglevel"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-events" or (errorHandler.buildDepError "streaming-events"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ];
          buildable = true;
        };
      };
    };
  }