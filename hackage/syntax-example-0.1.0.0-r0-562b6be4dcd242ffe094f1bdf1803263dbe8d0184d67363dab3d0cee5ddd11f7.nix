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
      identifier = { name = "syntax-example"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example application using syntax, a library for abstract syntax descriptions.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "syntax-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."semi-iso" or (errorHandler.buildDepError "semi-iso"))
            (hsPkgs."syntax" or (errorHandler.buildDepError "syntax"))
            (hsPkgs."syntax-attoparsec" or (errorHandler.buildDepError "syntax-attoparsec"))
            (hsPkgs."syntax-pretty" or (errorHandler.buildDepError "syntax-pretty"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }