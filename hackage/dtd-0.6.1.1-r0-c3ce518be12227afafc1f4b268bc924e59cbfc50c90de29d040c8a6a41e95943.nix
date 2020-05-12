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
      identifier = { name = "dtd"; version = "0.6.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michaels@suite-sol.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Parse and render DTD files";
      description = "Parse and render DTD files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."uri-conduit" or (errorHandler.buildDepError "uri-conduit"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."xml-catalog" or (errorHandler.buildDepError "xml-catalog"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."attoparsec-conduit" or (errorHandler.buildDepError "attoparsec-conduit"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          ];
        buildable = true;
        };
      };
    }