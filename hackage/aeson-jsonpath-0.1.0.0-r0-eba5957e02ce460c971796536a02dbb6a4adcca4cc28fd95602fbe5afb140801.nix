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
      identifier = { name = "aeson-jsonpath"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taimoor Zaeem <mtaimoorzaeem@gmail.com>";
      author = "Taimoor Zaeem";
      homepage = "https://github.com/taimoorzaeem/aeson-jsonpath";
      url = "";
      synopsis = "Parse and run JSONPath queries on Aeson documents";
      description = "RFC 9535 compliant JSONPath parsing and querying\npackage. JSONPath is similar to XPath for querying XML documents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-jsonpath" or (errorHandler.buildDepError "aeson-jsonpath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
          buildable = true;
        };
      };
    };
  }