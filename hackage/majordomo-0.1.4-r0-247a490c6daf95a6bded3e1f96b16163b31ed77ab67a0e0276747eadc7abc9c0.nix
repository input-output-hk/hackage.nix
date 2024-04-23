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
      specVersion = "1.8";
      identifier = { name = "majordomo"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mark@ninjablocks.com, sean@ninjablocks.com";
      author = "Mark Wotton, Sean Seefried";
      homepage = "";
      url = "";
      synopsis = "Majordomo protocol for ZeroMQ";
      description = "The Majordomo Protocol (MDP) defines a reliable\nservice-oriented request-reply dialog between a\nset of client applications, a broker and a set of\nworker applications. MDP covers presence,\nheartbeating, and service-oriented request-reply\nprocessing. It originated from the Majordomo\npattern defined in Chapter 4 of the Guide.\nhttp://rfc.zeromq.org/spec:7";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zeromq-haskell" or (errorHandler.buildDepError "zeromq-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
        ];
        buildable = true;
      };
      exes = {
        "mdp_client" = {
          depends = [
            (hsPkgs."majordomo" or (errorHandler.buildDepError "majordomo"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "echoworker" = {
          depends = [
            (hsPkgs."majordomo" or (errorHandler.buildDepError "majordomo"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."threads" or (errorHandler.buildDepError "threads"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }