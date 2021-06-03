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
      specVersion = "2.2";
      identifier = {
        name = "Shpadoinkle-backend-static";
        version = "0.2.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "isaac.shapira@platonic.systems";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A backend for rendering Shpadoinkle as Text.";
      description = "Shpadoinkle's static backend, which renders Html as Text.\nEvent listeners are ignored. This is useful when rendering\non the server or for static site generation.";
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