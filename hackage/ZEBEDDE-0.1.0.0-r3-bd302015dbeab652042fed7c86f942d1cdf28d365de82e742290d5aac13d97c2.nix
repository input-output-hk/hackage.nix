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
      identifier = { name = "ZEBEDDE"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guystorey88@hotmail.com";
      author = "Guy Storey";
      homepage = "";
      url = "";
      synopsis = "Polymer growth simulation method";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
        ];
        buildable = true;
      };
    };
  }