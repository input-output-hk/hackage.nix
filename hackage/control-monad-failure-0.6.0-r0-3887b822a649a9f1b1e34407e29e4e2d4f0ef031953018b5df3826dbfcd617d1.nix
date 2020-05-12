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
      identifier = { name = "control-monad-failure"; version = "0.6.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra, Michael Snoyman, Nicolas Pouillard";
      homepage = "http://github.com/pepeiborra/control-monad-failure";
      url = "";
      synopsis = "A class for monads which can fail with an error.";
      description = "A class for monads which can fail with an error.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }