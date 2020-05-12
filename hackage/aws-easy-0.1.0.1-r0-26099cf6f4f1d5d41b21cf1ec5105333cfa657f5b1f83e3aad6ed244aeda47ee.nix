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
      identifier = { name = "aws-easy"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2018 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/aws-easy#readme";
      url = "";
      synopsis = "Helper function and types for working with amazonka";
      description = "This package provides assorted functions and some Template Haskell to simplify working the @amazonka@ family of packages for interacting with Amazon Web Services.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "aws-easy-demo" = {
          depends = [
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-dynamodb" or (errorHandler.buildDepError "amazonka-dynamodb"))
            (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
            (hsPkgs."aws-easy" or (errorHandler.buildDepError "aws-easy"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }