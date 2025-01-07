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
      specVersion = "3.0";
      identifier = { name = "network-transport-tests"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "The Distributed Haskell team";
      author = "Edsko de Vries";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "Unit tests for Network.Transport implementations";
      description = "Unit tests for Network-Transport implementations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
        ];
        buildable = true;
      };
    };
  }