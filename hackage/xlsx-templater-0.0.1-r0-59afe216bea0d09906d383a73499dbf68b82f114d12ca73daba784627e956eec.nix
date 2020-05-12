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
      identifier = { name = "xlsx-templater"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "qrilka@gmail.com";
      author = "Kirill Zaborsky";
      homepage = "https://github.com/qrilka/xlsx-templater";
      url = "";
      synopsis = "Simple and incomplete Excel file templater";
      description = "Library for creating xlsx data files from xlsx tempaltes.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xlsx" or (errorHandler.buildDepError "xlsx"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }