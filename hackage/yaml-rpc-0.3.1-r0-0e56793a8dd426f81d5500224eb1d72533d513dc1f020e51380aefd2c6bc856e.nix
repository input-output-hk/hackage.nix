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
      identifier = { name = "yaml-rpc"; version = "0.3.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "http://iportnov.ru/en/projects/yaml-rpc-0/";
      url = "";
      synopsis = "Simple library for network (TCP/IP) YAML RPC";
      description = "This library aimed to organize remote procedure call (RPC)\nover TCP/IP network, using YAML as data serialization format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."data-object-yaml" or (errorHandler.buildDepError "data-object-yaml"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }