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
      identifier = { name = "emailparse"; version = "0.2.0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michal@monad.cat";
      author = "Michal Kawalec";
      homepage = "";
      url = "";
      synopsis = "An email parser that will parse everything";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."strptime" or (errorHandler.buildDepError "strptime"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
          ];
        buildable = true;
        };
      tests = {
        "emailparse-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."strptime" or (errorHandler.buildDepError "strptime"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }