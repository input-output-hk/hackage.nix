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
      specVersion = "1.4";
      identifier = { name = "csv-nptools"; version = "0.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A collection of CSV tools";
      description = "A collection of CSV tools";
      buildType = "Simple";
      };
    components = {
      exes = {
        "csv2html" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."tabular" or (errorHandler.buildDepError "tabular"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            ];
          buildable = true;
          };
        "csv2json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."txt-sushi" or (errorHandler.buildDepError "txt-sushi"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        "csv-add-id" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."txt-sushi" or (errorHandler.buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-reformat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."txt-sushi" or (errorHandler.buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-tr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."txt-sushi" or (errorHandler.buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-transpose" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."txt-sushi" or (errorHandler.buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        "csv-pad" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."txt-sushi" or (errorHandler.buildDepError "txt-sushi"))
            ];
          buildable = true;
          };
        };
      };
    }