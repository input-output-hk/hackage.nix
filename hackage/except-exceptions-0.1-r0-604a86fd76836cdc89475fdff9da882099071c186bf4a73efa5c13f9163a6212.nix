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
      identifier = { name = "except-exceptions"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tim Humphries <tim@utf8.me>";
      author = "Tim Humphries";
      homepage = "https://github.com/thumphries/except-exceptions";
      url = "";
      synopsis = "Safely deal with exceptions in ExceptT";
      description = "Exception-related functions for @ExceptT@.\n\nAs of @exceptions-0.9.0@, @ExceptT@ has a valid and sensible\n@MonadMask@ instance. If available, this package simply re-exports the\nrelevant functions from @exceptions@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }