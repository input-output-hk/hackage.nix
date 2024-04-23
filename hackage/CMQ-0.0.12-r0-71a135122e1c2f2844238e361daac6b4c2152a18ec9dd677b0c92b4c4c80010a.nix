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
      identifier = { name = "CMQ"; version = "0.0.12"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 cmq authors";
      maintainer = "J.Fritsch@cs.cardiff.ac.uk";
      author = "Joerg Fritsch";
      homepage = "http://github.com/viloocity/cmq/";
      url = "";
      synopsis = "cwmwl udp message queue";
      description = "CMQ is a lightweight message queue using the UDP protocol as transport protocol. It trades guarantees, consistency mechanisms, (shared) state and transactions for robustness, scalability and performance. CMQ fares especially well in modern Layer 2 switches in data center networks, as well as in the presence of errors.\nThis library provides CMQ version = 0.0.12";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }