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
    flags = { static = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "dprox"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "2023 Bin Jin";
      maintainer = "bjin@ctrl-d.org";
      author = "Bin Jin";
      homepage = "https://github.com/bjin/dprox#readme";
      url = "";
      synopsis = "a lightweight DNS proxy server, compatible with dnsmasq-china-list";
      description = "Please see the README on GitHub at <https://github.com/bjin/dprox#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dprox" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
            (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      tests = {
        "dprox-test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
            (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }