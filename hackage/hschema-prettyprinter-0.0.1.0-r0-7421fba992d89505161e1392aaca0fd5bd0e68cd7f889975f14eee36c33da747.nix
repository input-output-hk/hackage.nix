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
      identifier = { name = "hschema-prettyprinter"; version = "0.0.1.0"; };
      license = "LGPL-3.0-only";
      copyright = "2018 Antonio Alonso Dominguez";
      maintainer = "alonso.domin@gmail.com";
      author = "Antonio Alonso Dominguez";
      homepage = "https://github.com/alonsodomin/haskell-schema#readme";
      url = "";
      synopsis = "Describe schemas for your Haskell data types.";
      description = "Please see the README on GitHub at <https://github.com/alonsodomin/haskell-schema#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."hschema" or (errorHandler.buildDepError "hschema"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }