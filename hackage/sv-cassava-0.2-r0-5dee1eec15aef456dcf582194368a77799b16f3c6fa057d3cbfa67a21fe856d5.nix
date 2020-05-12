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
      identifier = { name = "sv-cassava"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017-2018, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "george@wils.online";
      author = "George Wilson";
      homepage = "https://github.com/qfpl/sv";
      url = "";
      synopsis = "Integration to use sv with cassava's parser";
      description = "This package provides functions allowing you to use cassava's parser\ntogether with sv-core's decoding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."sv-core" or (errorHandler.buildDepError "sv-core"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."sv-core" or (errorHandler.buildDepError "sv-core"))
            (hsPkgs."sv-cassava" or (errorHandler.buildDepError "sv-cassava"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }