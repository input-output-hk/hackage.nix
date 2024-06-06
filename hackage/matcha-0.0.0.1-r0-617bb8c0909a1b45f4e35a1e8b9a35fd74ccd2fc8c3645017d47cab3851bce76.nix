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
      specVersion = "2.2";
      identifier = { name = "matcha"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2024 Rashad Gover";
      maintainer = "phantomtype@protonmail.com";
      author = "Rashad Gover";
      homepage = "https://github.com/rashadg1030/matcha#readme";
      url = "";
      synopsis = "A micro web framework based on pattern matching";
      description = "Please see the README on GitHub at <https://github.com/rashadg1030/matcha#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
      exes = {
        "matcha-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."matcha" or (errorHandler.buildDepError "matcha"))
          ];
          buildable = true;
        };
      };
      tests = {
        "matcha-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."matcha" or (errorHandler.buildDepError "matcha"))
          ];
          buildable = true;
        };
      };
    };
  }