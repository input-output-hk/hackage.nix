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
      specVersion = "1.2";
      identifier = { name = "attempt"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/snoyberg/attempt/tree/master";
      url = "";
      synopsis = "Error handling using extensible exceptions outside the IO monad.";
      description = "Defines a data type, Attempt, which has a Success and Failure constructor. Failure contains an extensible exception.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."control-monad-failure" or (errorHandler.buildDepError "control-monad-failure"))
          (hsPkgs."monadloc" or (errorHandler.buildDepError "monadloc"))
          ];
        buildable = true;
        };
      };
    }