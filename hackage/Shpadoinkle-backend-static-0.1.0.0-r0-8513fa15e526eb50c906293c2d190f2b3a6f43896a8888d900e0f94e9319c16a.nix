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
      specVersion = "1.12";
      identifier = {
        name = "Shpadoinkle-backend-static";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fresheyeball@protonmail.com";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A backend for rendering Shpadoinkle as Text.";
      description = "Shpadoinkle's static backend, renders Html as Text. Event listeners are ignored. This is useful when rendering on the server, or for static site generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compactable" or (errorHandler.buildDepError "compactable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }