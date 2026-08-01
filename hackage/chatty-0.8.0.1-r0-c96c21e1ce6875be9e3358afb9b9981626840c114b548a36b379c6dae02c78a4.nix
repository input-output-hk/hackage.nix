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
      identifier = { name = "chatty"; version = "0.8.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "darcs@enumeration.eu                    ";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "Some monad transformers and typeclasses for text in- and output abstraction.";
      description = "Some monad transformers and typeclasses abstracting global dependencies, like Text in- and output (incl. here-strings, pipes, recorders and file-redirections on a per-function scope).\nNote that a lot of modules have been removed since version 0.7, as they were encouraging antipatterns and had nothing to do with the core idea of chatty. Also, there will be more removals in the future! Version 1.0 will only contain core features.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."chatty-utils" or (errorHandler.buildDepError "chatty-utils"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }