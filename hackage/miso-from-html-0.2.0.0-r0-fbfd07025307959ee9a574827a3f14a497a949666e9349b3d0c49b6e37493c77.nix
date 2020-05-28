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
      identifier = { name = "miso-from-html"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Johnson 2020";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Convert HTML to miso View syntax";
      description = "HTML parser that pretty prints to a Miso View";
      buildType = "Simple";
      };
    components = {
      exes = {
        "miso-from-html" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }