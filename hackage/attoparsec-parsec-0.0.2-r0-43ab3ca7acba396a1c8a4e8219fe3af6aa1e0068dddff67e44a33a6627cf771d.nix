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
      specVersion = "1.8";
      identifier = { name = "attoparsec-parsec"; version = "0.0.2"; };
      license = "MIT";
      copyright = "(c) 2011, 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "An Attoparsec compatibility layer for Parsec";
      description = "This package provides an implementation of\n\"Data.Attoparsec.Text\" in terms of Parsec.\nIt can be used to write parsers that can be compiled against\nboth Attoparsec and Parsec.\n\nAttoparsec is an awesome and very fast library, but it still\nhas a weak point: It does not generate very useful error\nmessages on parse errors.  Compiling an Attoparsec parser\nagainst Parsec can be useful for at least two scenarios.\n\n- Parsec can be used while developing Attoparsec parsers, so\nthat you get better error messages on failing test cases.\n\n- You can use Attoparsec for parsing, so that you benefit\nfrom it's speed.  And on parse errors you can re-parse the\ninput with Parsec, so that you can display a useful error\nmessage to the user.\n\nA simple usage example is here:\n<https://github.com/sol/attoparsec-parsec#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec-parsec" or (errorHandler.buildDepError "attoparsec-parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "readme-parsec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec-parsec" or (errorHandler.buildDepError "attoparsec-parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            ];
          buildable = true;
          };
        "readme-attoparsec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."markdown-unlit" or (errorHandler.buildDepError "markdown-unlit"))
            ];
          buildable = true;
          };
        };
      };
    }