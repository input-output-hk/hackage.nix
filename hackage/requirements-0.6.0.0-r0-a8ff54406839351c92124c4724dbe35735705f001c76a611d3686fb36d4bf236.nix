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
      identifier = { name = "requirements"; version = "0.6.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2019, 2020 Juan García-Garland, Marcos Viera ";
      maintainer = "jpgarcia@fing.edu.uy";
      author = "Juan García-Garland";
      homepage = "";
      url = "";
      synopsis = "Abstraction to manage user defined Type Errors";
      description = "Require framework, abstraction to manage user defined Type Errors";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }