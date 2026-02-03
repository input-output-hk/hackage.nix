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
      specVersion = "3.4";
      identifier = { name = "pandoc-typescript"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/srid/imako/tree/master/backend/pandoc-typescript";
      url = "";
      synopsis = "TypeScript type generation for Pandoc AST types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-typescript" or (errorHandler.buildDepError "aeson-typescript"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }