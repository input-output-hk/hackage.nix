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
      identifier = { name = "clerk"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Danila Danko, Nickolay Kudasov";
      maintainer = "Danila Danko";
      author = "Danila Danko, Nickolay Kudasov";
      homepage = "https://github.com/deemp/clerk#readme";
      url = "";
      synopsis = "Declaratively describe spreadsheets and generate xlsx";
      description = "Please see the README on GitHub at <https://github.com/deemp/clerk#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xlsx" or (errorHandler.buildDepError "xlsx"))
        ];
        buildable = true;
      };
    };
  }