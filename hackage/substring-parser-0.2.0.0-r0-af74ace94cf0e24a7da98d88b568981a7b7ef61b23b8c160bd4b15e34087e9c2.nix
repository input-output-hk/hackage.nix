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
      identifier = { name = "substring-parser"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "2017 Yuji Yamamoto";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."NoTrace" or (errorHandler.buildDepError "NoTrace"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "add-env-config-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."NoTrace" or (errorHandler.buildDepError "NoTrace"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."substring-parser" or (errorHandler.buildDepError "substring-parser"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }