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
      specVersion = "1.6";
      identifier = { name = "ismtp"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Advanced ESMTP library";
      description = "This library provides fast, incremental client-side ESMTP sessions\nfor mail exchangers and mail transfer agents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contstuff" or (errorHandler.buildDepError "contstuff"))
          (hsPkgs."dnscache" or (errorHandler.buildDepError "dnscache"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."monad-peel" or (errorHandler.buildDepError "monad-peel"))
          (hsPkgs."netlines" or (errorHandler.buildDepError "netlines"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }