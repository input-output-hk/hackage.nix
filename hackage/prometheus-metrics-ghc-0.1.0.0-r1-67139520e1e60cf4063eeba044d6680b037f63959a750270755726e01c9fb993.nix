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
      identifier = { name = "prometheus-metrics-ghc"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2015 Will Coster";
      maintainer = "willcoster@gmail.com";
      author = "Will Coster";
      homepage = "https://github.com/fimad/prometheus-haskell";
      url = "";
      synopsis = "Metrics exposing GHC runtime information for use with prometheus-client.";
      description = "Metrics exposing GHC runtime information for use with prometheus-client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."prometheus-client" or (errorHandler.buildDepError "prometheus-client"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."prometheus-client" or (errorHandler.buildDepError "prometheus-client"))
            ];
          buildable = true;
          };
        };
      };
    }