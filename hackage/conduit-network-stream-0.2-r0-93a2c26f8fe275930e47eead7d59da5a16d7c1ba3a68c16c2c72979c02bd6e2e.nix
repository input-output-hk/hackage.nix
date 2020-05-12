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
      identifier = { name = "conduit-network-stream"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@nils.cc";
      author = "Nils Schweinsberg <mail@nils.cc>";
      homepage = "";
      url = "";
      synopsis = "A base layer for network protocols using Conduits";
      description = "A base layer for network protocols using Conduits";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
          ];
        buildable = true;
        };
      };
    }