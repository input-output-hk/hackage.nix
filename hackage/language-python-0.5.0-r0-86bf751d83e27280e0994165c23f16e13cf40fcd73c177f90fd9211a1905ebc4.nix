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
      identifier = { name = "language-python"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2015 Bernard James Pope";
      maintainer = "florbitous@gmail.com";
      author = "Bernard James Pope (Bernie Pope)";
      homepage = "http://github.com/bjpop/language-python ";
      url = "";
      synopsis = "Parsing and pretty printing of Python code. ";
      description = "language-python is a Haskell library for lexical analysis, parsing\nand pretty printing Python code. It supports versions 2.x and 3.x of Python.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          ];
        buildable = true;
        };
      };
    }