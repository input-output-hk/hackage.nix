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
      identifier = { name = "log-effect-syslog"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lanablack@amok.cc";
      author = "Lana Black";
      homepage = "https://github.com/greydot/log-effect-syslog";
      url = "";
      synopsis = "Syslog functions for log-effect";
      description = "Utility functions for combining log-effect and syslog";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."extensible-effects" or (errorHandler.buildDepError "extensible-effects"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."log-effect" or (errorHandler.buildDepError "log-effect"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }