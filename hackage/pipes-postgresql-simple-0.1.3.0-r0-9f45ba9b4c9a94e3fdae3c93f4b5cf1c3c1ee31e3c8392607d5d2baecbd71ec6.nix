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
      identifier = { name = "pipes-postgresql-simple"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "Oliver Charles 2013";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "";
      url = "";
      synopsis = "Convert various postgresql-simple calls to work with pipes";
      description = "This library provides a few Producers and Consumers that allow\n@postgresql-simple@ calls to be made within the @pipes@ framework. Currently,\nthere is support for:\n\n* Streaming queries\n\n* Streaming entire tables to and from a @ByteString@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }