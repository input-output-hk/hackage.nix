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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "agentx"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chemistmail@gmail.com";
      author = "chemist";
      homepage = "";
      url = "";
      synopsis = "AgentX protocol for write SNMP subagents";
      description = "Native implementation agentx protocol (rfc2741)       ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."snmp" or (errorHandler.buildDepError "snmp"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
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
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          ];
        buildable = true;
        };
      exes = {
        "agentx_example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."snmp" or (errorHandler.buildDepError "snmp"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
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
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
            ];
          buildable = if !flags.example then false else true;
          };
        };
      };
    }