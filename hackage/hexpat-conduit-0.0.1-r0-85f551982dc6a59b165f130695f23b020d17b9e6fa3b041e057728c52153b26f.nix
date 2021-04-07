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
      specVersion = "1.12";
      identifier = { name = "hexpat-conduit"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen 2020";
      maintainer = "kristof@resonata.be";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "conduit streaming for hexpat-streamparser";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."List" or (errorHandler.buildDepError "List"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."hexpat-streamparser" or (errorHandler.buildDepError "hexpat-streamparser"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }