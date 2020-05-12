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
      identifier = { name = "couch-hs"; version = "0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Peter Sagerson <psagers.hs@ignorare.net>";
      author = "Peter Sagerson";
      homepage = "";
      url = "";
      synopsis = "A CouchDB view server for Haskell.";
      description = "A CouchDB view server for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          ];
        buildable = true;
        };
      exes = { "couch-hs" = { buildable = true; }; };
      };
    }