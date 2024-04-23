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
      identifier = { name = "her-lexer-parsec"; version = "0.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Timothy Hobbs<timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs";
      homepage = "";
      url = "";
      synopsis = "Parsec frontend to \"her-lexer\" for Haskell source code.";
      description = "Parsec frontend to \"her-lexer\" for Haskell source code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."her-lexer" or (errorHandler.buildDepError "her-lexer"))
        ];
        buildable = true;
      };
    };
  }