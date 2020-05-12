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
      identifier = { name = "json-tools"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A collection of JSON tools";
      description = "A collection of JSON tools";
      buildType = "Simple";
      };
    components = {
      exes = {
        "json-concat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "json-deep-select-key" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "json-iter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "json-lines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "json-strings" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "json-unlines" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "json-wrap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "json-xargs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AttoJson" or (errorHandler.buildDepError "AttoJson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "tar2json" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."convertible-text" or (errorHandler.buildDepError "convertible-text"))
            (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
            (hsPkgs."data-object-json" or (errorHandler.buildDepError "data-object-json"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            ];
          buildable = true;
          };
        };
      };
    }