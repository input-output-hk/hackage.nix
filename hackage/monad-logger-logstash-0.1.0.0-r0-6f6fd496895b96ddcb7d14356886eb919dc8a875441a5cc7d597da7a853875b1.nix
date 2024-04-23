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
      identifier = { name = "monad-logger-logstash"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020 Michael B. Gale";
      maintainer = "m.gale@warwick.ac.uk";
      author = "Michael B. Gale";
      homepage = "https://github.com/mbg/logstash#readme";
      url = "";
      synopsis = "Logstash backend for monad-logger.";
      description = "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."logstash" or (errorHandler.buildDepError "logstash"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
    };
  }