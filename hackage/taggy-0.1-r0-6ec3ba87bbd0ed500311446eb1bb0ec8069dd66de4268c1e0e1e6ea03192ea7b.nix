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
      identifier = { name = "taggy"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari, Vikram Verma";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Vikram Verma";
      homepage = "http://github.com/alpmestan/taggy";
      url = "";
      synopsis = "Efficient and simple HTML/XML parsing library";
      description = "/taggy/ is a simple package for parsing HTML (and should work with XML)\nwritten on top of the <http://hackage.haskell.org/package/attoparsec attoparsec>\nlibrary, which makes it one of the most efficient (space and time consumption wise)\non hackage.\n\nThis is the root module of /taggy/. It reexports everything\nfrom the package. See each module's docs for details about\nthe functions and types involved in /taggy/.\n\nWhile we've been testing the parser on /many/ pages, it may still\nbe a bit rough around the edges. Let us know on <http://github.com/alpmestan/taggy/issues github>\nif you have any problem.\n\nIf you like to look at your HTML through\nvarious optical instruments, feel free to take a look at\nthe companion <http://hackage.haskell.org/package/taggy-lens taggy-lens>\npackage we've put up together. It makes HTML parsing a piece of cake.\n\n* If you want to parse a document as list of tags\nand go through it as some kind of stream by just picking\nwhat you need, head to \"Text.Taggy.Parser\" and take\na look at 'Text.Taggy.Parser.taggyWith' and\n'Text.Taggy.Parser.run'.\n* If you want to parse the document as a DOM tree and\ntraverse it to find the information you need,\nuse 'Text.Taggy.DOM.parseDOM'. This is especially useful\nwhen combined with the helpful combinators from\n\"Text.Taggy.Combinators\".\n* If you build some HTML manually\nor just transform some existing DOM tree\nand want to turn it into a 'Data.Text.Lazy.Text'\nhead to \"Text.Taggy.Renderer\" and look at 'Text.Taggy.Renderer.render'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "taggy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."taggy" or (errorHandler.buildDepError "taggy"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-attoparsec" or (errorHandler.buildDepError "hspec-attoparsec"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "taggytagsoup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."taggy" or (errorHandler.buildDepError "taggy"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }