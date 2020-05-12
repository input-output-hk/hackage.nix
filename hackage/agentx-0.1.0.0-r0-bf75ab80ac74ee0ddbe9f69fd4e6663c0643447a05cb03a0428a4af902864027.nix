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
      identifier = { name = "agentx"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chemistmail@gmail.com";
      author = "chemist";
      homepage = "";
      url = "";
      synopsis = "AgentX protocol for snmp subagents";
      description = "Native implementation agentx protocol (rfc2741)       ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."snmp" or (errorHandler.buildDepError "snmp"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          ];
        buildable = true;
        };
      exes = {
        "agentx" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."snmp" or (errorHandler.buildDepError "snmp"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bitwise" or (errorHandler.buildDepError "bitwise"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
            ];
          buildable = true;
          };
        };
      };
    }