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
      specVersion = "1.6";
      identifier = { name = "doc-review"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "josh.hoyt@galois.com";
      author = "Josh Hoyt";
      homepage = "https://github.com/j3h/doc-review";
      url = "";
      synopsis = "Document review Web application, like http://book.realworldhaskell.org/";
      description = "A standalone Web application that provides for\nparagraph-by-paragraph commentary by document reviewers,\nbased on the user interface from\n<http://book.realworldhaskell.org/>. Any Web page can be\nconfigured to work with the service by adding just a\nlittle bit of Javascript that makes it load the comment\nWeb UI. See the README or the homepage for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doc-review" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
            (hsPkgs."hexpat" or (errorHandler.buildDepError "hexpat"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."sqlite" or (errorHandler.buildDepError "sqlite"))
            (hsPkgs."tagchup" or (errorHandler.buildDepError "tagchup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xhtml-combinators" or (errorHandler.buildDepError "xhtml-combinators"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."xml-basic" or (errorHandler.buildDepError "xml-basic"))
            ];
          buildable = true;
          };
        "doc-review-test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }