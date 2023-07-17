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
      identifier = { name = "Mondrian"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "~alcinnz/Mondrian@todo.argonaut-constellation.org";
      author = "Adrian Cochrane";
      homepage = "https://argonaut-constellation.org/";
      url = "";
      synopsis = "Renders backgrounds & borders";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."typograffiti" or (errorHandler.buildDepError "typograffiti"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
        buildable = true;
        };
      exes = {
        "Mondrian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Mondrian" or (errorHandler.buildDepError "Mondrian"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."gl" or (errorHandler.buildDepError "gl"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."stylist-traits" or (errorHandler.buildDepError "stylist-traits"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            ];
          buildable = true;
          };
        "Convert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Mondrian-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }