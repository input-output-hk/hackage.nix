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
      identifier = { name = "hgopher"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maxwellswadling@gmail.com";
      author = "Maxwell Swadling";
      homepage = "";
      url = "";
      synopsis = "Gopher server";
      description = "A Haskell Gopher server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }