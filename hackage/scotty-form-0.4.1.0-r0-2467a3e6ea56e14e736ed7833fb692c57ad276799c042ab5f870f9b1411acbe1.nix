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
      identifier = { name = "scotty-form"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "Html form validation using `ditto`";
      description = "Formlet library for `scotty` using `lucid` and `ditto`";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."ditto" or (errorHandler.buildDepError "ditto"))
          (hsPkgs."ditto-lucid" or (errorHandler.buildDepError "ditto-lucid"))
        ];
        buildable = true;
      };
    };
  }