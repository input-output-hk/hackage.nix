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
      identifier = { name = "typography-geometry"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Drawings for printed text documents";
      description = "Drawings for printed text documents";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."polynomials-bernstein" or (errorHandler.buildDepError "polynomials-bernstein"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }