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
      identifier = { name = "substring-parser"; version = "0.4.1.0"; };
      license = "Apache-2.0";
      copyright = "2018 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://gitlab.com/igrep/substring-parser";
      url = "";
      synopsis = "Match / replace substrings with a parser combinators.";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."NoTrace" or (errorHandler.buildDepError "NoTrace"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "substring-parser-test" = {
          depends = [
            (hsPkgs."NoTrace" or (errorHandler.buildDepError "NoTrace"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
            (hsPkgs."substring-parser" or (errorHandler.buildDepError "substring-parser"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }