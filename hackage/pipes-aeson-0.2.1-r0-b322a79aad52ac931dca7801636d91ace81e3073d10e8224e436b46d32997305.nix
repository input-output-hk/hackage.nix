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
      identifier = { name = "pipes-aeson"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013-2014";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-aeson";
      url = "";
      synopsis = "Encode and decode JSON streams using Aeson and Pipes.";
      description = "Utilities to encode and decode Pipes streams of JSON.\n\nSee the @changelog@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }