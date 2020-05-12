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
      specVersion = "1.8";
      identifier = { name = "simple-src-utils"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Laforge <qdunkan@gmail.com>";
      author = "Evan Laforge";
      homepage = "https://github.com/elaforge/simple-src-utils";
      url = "";
      synopsis = "source code editing utilities";
      description = "Collection of small utilities to manipulate source code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "string-literal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            ];
          buildable = true;
          };
        "cmt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-string-literal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "test-cmt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }