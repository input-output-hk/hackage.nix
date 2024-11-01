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
      identifier = { name = "traverse-with-class"; version = "0.2.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Generic applicative traversals";
      description = "This is a generic programming library in the spirit of\n\\\"Scrap your boilerplate with class\\\", but with several\nimprovements — most notably, it's based on the @gtraverse@\nfunction instead of @gfoldl@.\n@gtraverse@ is equivalent in power to @gfoldl@, but lets\nyou more easily write non-standard views of the data type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }