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
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "xml-enumerator-combinators"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aristidb@googlemail.com";
      author = "Aristid Breitkreuz";
      homepage = "";
      url = "";
      synopsis = "Parser combinators for xml-enumerator and compatible XML parsers.";
      description = "Parser combinators for xml-enumerator and compatible XML parsers. The aim is to provide advanced parser combinators to eliminate\ntiresome repetition of boilerplate in streaming XML parsers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."xml-enumerator" or (errorHandler.buildDepError "xml-enumerator"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }