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
      specVersion = "1.10";
      identifier = { name = "broker-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 David Banas; all rights reserved World wide.";
      maintainer = "capn.freako@gmail.com";
      author = "David Banas";
      homepage = "https://github.com/capn-freako/broker-haskell";
      url = "";
      synopsis = "Haskell bindings to Broker, Bro's messaging library.";
      description = "Provides Language.Broker, a set of Haskell FFI wrappers around\nthe C-interface to Broker (libbroker), the external messaging\ninterface to Bro, a network security tool.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."broker" or (errorHandler.sysDepError "broker")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."broker-haskell" or (errorHandler.buildDepError "broker-haskell"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }