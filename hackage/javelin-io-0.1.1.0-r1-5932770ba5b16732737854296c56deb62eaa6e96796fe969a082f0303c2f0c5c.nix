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
      specVersion = "3.0";
      identifier = { name = "javelin-io"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "laurent.decotret@outlook.com";
      author = "Laurent P. René de Cotret";
      homepage = "";
      url = "";
      synopsis = "IO operations for the `javelin` package";
      description = "This package implements serialization/deserialization of 'Series', labeled one-dimensional arrays\ncombining properties from maps and arrays.\n\nThe important modules are:\n\n[\"Data.Series.IO\"] Serialization/deserialization of series of arbitrary types.\n\n[\"Data.Series.Unboxed.IO\"] Serialization/deserialization of unboxed series for better performance, at the cost of flexibility.\n\n[\"Data.Series.Generic.IO\"] Serialization/deserialization of generic series to manipulate any type of 'Series'.\n\nIf you don't know where to start, please take a look at the documentation in \"Data.Series.IO\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."javelin" or (errorHandler.buildDepError "javelin"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "javelin-io-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."javelin" or (errorHandler.buildDepError "javelin"))
            (hsPkgs."javelin-io" or (errorHandler.buildDepError "javelin-io"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }