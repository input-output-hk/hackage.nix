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
      identifier = { name = "ebnf-bff"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ma302fh@gold.ac.uk";
      author = "Lokidottir";
      homepage = "";
      url = "";
      synopsis = "Parser combinators & EBNF, BFFs!";
      description = "A library & program that builds parsers from ISO EBNF using Parsec";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "ebnf-parse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."ebnf-bff" or (errorHandler.buildDepError "ebnf-bff"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
            ];
          buildable = true;
          };
        };
      };
    }