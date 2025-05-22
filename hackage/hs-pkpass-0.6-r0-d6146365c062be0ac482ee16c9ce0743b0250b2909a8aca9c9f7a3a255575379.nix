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
      identifier = { name = "hs-pkpass"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marc@digitallyinduced.com";
      author = "Vincent Ambo";
      homepage = "https://github.com/tazjin/hs-pkpass";
      url = "";
      synopsis = "A library for Passbook pass creation & signing";
      description = "A Haskell library for type-safe creation of Passbook passes and signing through Apple's signpass tool.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
        ];
        buildable = true;
      };
    };
  }