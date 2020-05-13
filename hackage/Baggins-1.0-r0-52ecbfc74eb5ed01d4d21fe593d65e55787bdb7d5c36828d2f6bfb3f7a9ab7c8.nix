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
      identifier = { name = "Baggins"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "pierre-etienne.meunier@lif.univ-mrs.fr";
      author = "Pierre-Etienne Meunier";
      homepage = "http://pageperso.lif.univ-mrs.fr/~pierreetienne.meunier/Baggins";
      url = "";
      synopsis = "Tools for self-assembly";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }