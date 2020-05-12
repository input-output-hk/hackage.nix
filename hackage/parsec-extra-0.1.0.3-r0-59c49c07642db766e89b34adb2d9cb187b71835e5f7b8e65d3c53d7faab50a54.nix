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
      specVersion = "1.6";
      identifier = { name = "parsec-extra"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "Arie Peterson";
      homepage = "";
      url = "";
      synopsis = "Some miscellaneous basic string parsers.";
      description = "Basic string parsers for integer numbers and case-insensitive string parsing.\nAlso an alternative parse function, which throws a monadic error on parse failure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          ];
        buildable = true;
        };
      };
    }