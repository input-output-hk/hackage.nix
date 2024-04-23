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
      identifier = { name = "discokitty"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mromang08+github@gmail.com";
      author = "Mario Román (mroman42)";
      homepage = "https://github.com/mroman42/discokitty";
      url = "";
      synopsis = "DisCoCat implementation.";
      description = "An educational implementation of the DisCoCat framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }