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
      specVersion = "2.4";
      identifier = { name = "resourcet-extra"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara, 2023";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/hs-resourcet-extra";
      url = "";
      synopsis = "ResourceT extras";
      description = "ResourceT extras";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
        ];
        buildable = true;
      };
    };
  }