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
      specVersion = "3.0";
      identifier = { name = "symantic-document"; version = "1.5.2.20200320"; };
      license = "AGPL-3.0-or-later";
      copyright = "Julien Moutinho <julm+symantic-document@sourcephile.fr>";
      maintainer = "mailto:~julm/symantic-document@todo.hut.sourcephile.fr";
      author = "Julien Moutinho <julm+symantic-document@sourcephile.fr>";
      homepage = "https://git.hut.sourcephile.fr/~julm/symantic-document";
      url = "";
      synopsis = "Symantics combinators for generating documents.";
      description = "Only generating plain text documents is supported for now,\nthose can however include ANSI escape sequences to use a 16 colors pallet.\n.\nAlternative: <ansi-wl-pprint https://hackage.haskell.org/package/ansi-wl-pprint>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "symantic-document-tests" = {
          depends = [
            (hsPkgs."symantic-document" or (errorHandler.buildDepError "symantic-document"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }