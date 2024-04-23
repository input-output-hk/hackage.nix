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
      identifier = { name = "Naperian"; version = "0.1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "dominic@steinitz.org";
      author = "Austin Seipp";
      homepage = "https://github.com/idontgetoutmuch/Naperian";
      url = "";
      synopsis = "Naperian Functors for APL-like programming";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }