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
      identifier = { name = "servant-serf"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "ACI Learning";
      author = "";
      homepage = "https://github.com/EdutainmentLIVE/servant-serf#readme";
      url = "";
      synopsis = "Generates a servant API module";
      description = "A preprocessor which will parse a psuedo-haskell module with imports and generate a module with exports a Route type and a handler function";
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
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }