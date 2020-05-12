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
      identifier = { name = "aeson-iproute"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lanablack@amok.cc";
      author = "Lana Black";
      homepage = "https://github.com/greydot/aeson-iproute";
      url = "";
      synopsis = "Aeson instances for iproute types";
      description = "Aeson instances for iproute types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }