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
      identifier = { name = "custom-prelude"; version = "0.2.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/custom-prelude";
      url = "";
      synopsis = "An enhanced prelude, serving as a foundation for my projects";
      description = "An enhanced prelude, serving as a foundation for my projects";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic-prelude" or (errorHandler.buildDepError "basic-prelude"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      };
    }