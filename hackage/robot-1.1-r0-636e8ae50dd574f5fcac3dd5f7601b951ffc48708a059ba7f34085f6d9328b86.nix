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
      identifier = { name = "robot"; version = "1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "lambda.fairy@gmail.com";
      author = "Chris Wong";
      homepage = "https://github.com/lfairy/robot";
      url = "";
      synopsis = "Simulate keyboard and mouse events";
      description = "Generate native keyboard and mouse events. Using this library,\napplications will respond as if the user performed the action\nthemselves.\n\nFor examples, see the @examples@ folder in the source distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xhb" or (errorHandler.buildDepError "xhb"))
          ];
        buildable = true;
        };
      };
    }