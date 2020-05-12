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
      identifier = { name = "prometheus-proc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "https://github.com/fimad/prometheus-haskell";
      url = "";
      synopsis = "Export metrics from /proc for the current process";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."unix-memory" or (errorHandler.buildDepError "unix-memory"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."prometheus-client" or (errorHandler.buildDepError "prometheus-client"))
          ];
        buildable = true;
        };
      };
    }