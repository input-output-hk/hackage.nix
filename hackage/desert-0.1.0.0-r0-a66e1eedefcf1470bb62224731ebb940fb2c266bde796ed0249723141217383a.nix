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
      identifier = { name = "desert"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 zjhmale";
      maintainer = "zjhmale@gmail.com";
      author = "zjhmale";
      homepage = "https://github.com/zjhmale/desert";
      url = "";
      synopsis = "a simple build tool for OCaml projects";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          ];
        buildable = true;
        };
      exes = {
        "desert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."desert" or (errorHandler.buildDepError "desert"))
            ];
          buildable = true;
          };
        };
      tests = {
        "desert-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."desert" or (errorHandler.buildDepError "desert"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }