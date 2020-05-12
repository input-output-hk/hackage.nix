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
      identifier = { name = "baserock-schema"; version = "0.0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Baserock Definitions Schema";
      description = "Baserock Definitions Schema - Parsers, Printers, Encoders, Decoders, ASTs, Graphs and Traversals";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."yaml-pretty-extras" or (errorHandler.buildDepError "yaml-pretty-extras"))
          ];
        buildable = true;
        };
      exes = {
        "baserock" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."baserock-schema" or (errorHandler.buildDepError "baserock-schema"))
            (hsPkgs."etc" or (errorHandler.buildDepError "etc"))
            (hsPkgs."gitlab-api" or (errorHandler.buildDepError "gitlab-api"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."yaml-pretty-extras" or (errorHandler.buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      tests = {
        "earthquake-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."baserock-schema" or (errorHandler.buildDepError "baserock-schema"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."yaml-pretty-extras" or (errorHandler.buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      };
    }