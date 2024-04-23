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
      identifier = { name = "data-default"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<l.mai@web.de>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "A class for types with a default value";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."data-default-instances-base" or (errorHandler.buildDepError "data-default-instances-base"))
          (hsPkgs."data-default-instances-containers" or (errorHandler.buildDepError "data-default-instances-containers"))
          (hsPkgs."data-default-instances-dlist" or (errorHandler.buildDepError "data-default-instances-dlist"))
          (hsPkgs."data-default-instances-old-locale" or (errorHandler.buildDepError "data-default-instances-old-locale"))
        ];
        buildable = true;
      };
    };
  }