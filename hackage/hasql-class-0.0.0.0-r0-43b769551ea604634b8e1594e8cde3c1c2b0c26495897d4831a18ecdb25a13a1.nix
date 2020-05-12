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
      identifier = { name = "hasql-class"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/jkarni/hasql-class#readme";
      url = "";
      synopsis = "Encodable and Decodable classes for hasql";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."generics-eot" or (errorHandler.buildDepError "generics-eot"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."generics-eot" or (errorHandler.buildDepError "generics-eot"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."generics-eot" or (errorHandler.buildDepError "generics-eot"))
            (hsPkgs."hasql-class" or (errorHandler.buildDepError "hasql-class"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            ];
          buildable = true;
          };
        };
      };
    }