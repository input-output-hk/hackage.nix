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
      identifier = { name = "tx"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2013 Michael Schröder";
      maintainer = "mc.schroeder@gmail.com";
      author = "Michael Schröder";
      homepage = "https://github.com/mcschroeder/tx";
      url = "";
      synopsis = "Persistent transactions on top of STM.";
      description = "Persistent transactions on top of STM.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }