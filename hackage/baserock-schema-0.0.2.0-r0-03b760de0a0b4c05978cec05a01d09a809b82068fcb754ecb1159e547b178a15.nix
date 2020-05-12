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
      identifier = { name = "baserock-schema"; version = "0.0.2.0"; };
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
          (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."flippers" or (errorHandler.buildDepError "flippers"))
          (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."yaml-pretty-extras" or (errorHandler.buildDepError "yaml-pretty-extras"))
          ];
        buildable = true;
        };
      exes = {
        "baserock" = {
          depends = [
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."baserock-schema" or (errorHandler.buildDepError "baserock-schema"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."flippers" or (errorHandler.buildDepError "flippers"))
            (hsPkgs."gitlab-api" or (errorHandler.buildDepError "gitlab-api"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."yaml-pretty-extras" or (errorHandler.buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      tests = {
        "earthquake-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."algebraic-graphs" or (errorHandler.buildDepError "algebraic-graphs"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."baserock-schema" or (errorHandler.buildDepError "baserock-schema"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."flippers" or (errorHandler.buildDepError "flippers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."yaml-pretty-extras" or (errorHandler.buildDepError "yaml-pretty-extras"))
            ];
          buildable = true;
          };
        };
      };
    }