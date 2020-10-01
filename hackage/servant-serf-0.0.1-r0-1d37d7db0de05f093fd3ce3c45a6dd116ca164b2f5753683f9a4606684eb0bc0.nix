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
      specVersion = "1.12";
      identifier = { name = "servant-serf"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Zachary Churchill <zachary@itpro.tv>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Generates a servant API module";
      description = "A preprocessor which will parse a psuedo-haskell module with imports and generate a module with exports an Api type and a server function";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "servant-serf" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
            ];
          buildable = true;
          };
        };
      };
    }