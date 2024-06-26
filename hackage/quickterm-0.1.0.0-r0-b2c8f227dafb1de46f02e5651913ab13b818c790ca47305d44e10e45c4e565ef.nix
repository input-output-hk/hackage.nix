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
      identifier = { name = "quickterm"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "https://github.com/SamuelSchlesinger/Quickterm";
      url = "";
      synopsis = "An interface for describing and executing terminal applications";
      description = "A quick and modular way to construct terminal interfaces.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."hashmap" or (errorHandler.buildDepError "hashmap"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }