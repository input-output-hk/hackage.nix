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
      identifier = { name = "xml-monad"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010 Aristid Breitkreuz";
      maintainer = "aristidb@googlemail.com";
      author = "Aristid Breitkreuz";
      homepage = "http://github.com/aristidb/xml-monad";
      url = "";
      synopsis = "Monadic extensions to the xml package.";
      description = "A monadic interface for xml based on transformers and transformers-compose. It provides filter composition, similar to hxt, and a\nsuccinct monadic interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compose" or (errorHandler.buildDepError "transformers-compose"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
        ];
        buildable = true;
      };
    };
  }