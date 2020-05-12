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
      identifier = { name = "micrologger"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Savanni D'Gerinel";
      maintainer = "savanni@savannidgerinel.com";
      author = "Savanni D'Gerinel";
      homepage = "https://github.com/savannidgerinel/micrologger#readme";
      url = "";
      synopsis = "A super simple logging module. Only for use for very simple projects.";
      description = "A super simple logging module. Only for use for very simple projects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }