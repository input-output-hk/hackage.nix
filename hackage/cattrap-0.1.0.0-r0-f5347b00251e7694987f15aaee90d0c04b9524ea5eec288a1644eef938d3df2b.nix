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
      identifier = { name = "cattrap"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Adrian Cochrane 2023";
      maintainer = "~alcinnz/cattrap@todo.argonaut-constellation.org";
      author = "Adrian Cochrane";
      homepage = "https://argonaut-constellation.org/";
      url = "";
      synopsis = "Lays out boxes according to the CSS Box Model.";
      description = "Computes where to place e.g. images, paragraphs, containers, tables, etc onscreen given desired amounts of whitespace.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."fontconfig-pure" or (errorHandler.buildDepError "fontconfig-pure"))
          (hsPkgs."harfbuzz-pure" or (errorHandler.buildDepError "harfbuzz-pure"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."balkon" or (errorHandler.buildDepError "balkon"))
          ];
        buildable = true;
        };
      exes = {
        "cattrap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cattrap" or (errorHandler.buildDepError "cattrap"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-cattrap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cattrap" or (errorHandler.buildDepError "cattrap"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            ];
          buildable = true;
          };
        };
      };
    }