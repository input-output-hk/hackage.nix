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
      identifier = { name = "pipes-p2p-examples"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/pipes-p2p-examples";
      url = "";
      synopsis = "Examples using pipes-p2p";
      description = "For now this package includes a dummy P2P network where nodes just exchange\ntheir network addresses. This can be used as boilerplate code for other P2P\nnetworks. Future releases may contain more examples.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "address-exchanger" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."network-simple-sockaddr" or (errorHandler.buildDepError "network-simple-sockaddr"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
            (hsPkgs."pipes-p2p" or (errorHandler.buildDepError "pipes-p2p"))
          ];
          buildable = true;
        };
      };
    };
  }