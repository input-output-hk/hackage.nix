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
      identifier = { name = "tofromxml"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Robert Reitmeier";
      maintainer = "Robert Reitmeier <concat [\"public\",\" a t \",\"thinking-machines\",\"dot\",\".net\"]>";
      author = "Robert Reitmeier";
      homepage = "";
      url = "";
      synopsis = "Reading and writing Haskell data from and to XML";
      description = "A library for reading and writing Haskell data from and to XML. Only prerequisite is that the data type derives Generic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hexpat-pickle" or (errorHandler.buildDepError "hexpat-pickle"))
          (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tofromxml" or (errorHandler.buildDepError "tofromxml"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
            (hsPkgs."hexpat-pickle" or (errorHandler.buildDepError "hexpat-pickle"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }