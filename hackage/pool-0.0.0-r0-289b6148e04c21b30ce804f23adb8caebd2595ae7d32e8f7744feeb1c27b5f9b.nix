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
      identifier = { name = "pool"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/pool";
      url = "";
      synopsis = "Thread-safe resource pools.";
      description = "Useful for stuff like database connection pools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."monad-peel" or (errorHandler.buildDepError "monad-peel"))
          ];
        buildable = true;
        };
      };
    }