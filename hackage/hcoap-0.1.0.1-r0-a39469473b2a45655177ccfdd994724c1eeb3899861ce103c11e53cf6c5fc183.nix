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
      identifier = { name = "hcoap"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Ulf Lilleengen";
      maintainer = "ulf.lilleengen@gmail.com";
      author = "Ulf Lilleengen";
      homepage = "https://github.com/lulf/hcoap";
      url = "";
      synopsis = "CoAP implementation for Haskell.";
      description = "CoAP library for writing CoAP clients, servers or just for decoding and encoding\nCoAP messages. The Network.CoAP.Server and Network.CoAP.Client modules allows\nbuilding CoAP servers and clients on top of a messaging layer which provides\nreliable transport of CoAP requests/responses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
        buildable = true;
        };
      exes = {
        "hcoap-example-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hcoap" or (errorHandler.buildDepError "hcoap"))
            ];
          buildable = true;
          };
        "hcoap-example-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hcoap" or (errorHandler.buildDepError "hcoap"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hcoap-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hcoap" or (errorHandler.buildDepError "hcoap"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }