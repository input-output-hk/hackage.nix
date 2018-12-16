{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "taggy";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Alp Mestanogullari, Vikram Verma";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Vikram Verma";
      homepage = "http://github.com/alpmestan/taggy";
      url = "";
      synopsis = "Efficient and simple HTML/XML parsing library";
      description = "/taggy/ is a simple package for parsing HTML (and should work with XML)\nwritten on top of the <http://hackage.haskell.org/package/attoparsec attoparsec>\nlibrary, which makes it one of the most efficient (space and time consumption wise)\non hackage.\n\nThis is the root module of /taggy/. It reexports everything\nfrom the package. See each module's docs for details about\nthe functions and types involved in /taggy/.\n\nWhile we've been testing the parser on /many/ pages, it may still\nbe a bit rough around the edges. Let us know on <http://github.com/alpmestan/taggy/issues github>\nif you have any problem.\n\nIf you like to look at your HTML through\nvarious optical instruments, feel free to take a look at\nthe companion <http://hackage.haskell.org/package/taggy-lens taggy-lens>\npackage we've put up together. It makes HTML parsing a piece of cake.\n\nIf you want to parse a document as list of tags\nand go through it as some kind of stream by just picking\nwhat you need, head to \"Text.Taggy.Parser\" and take\na look at 'Text.Taggy.Parser.taggyWith' and\n'Text.Taggy.Parser.run'.\n\nIf you want to parse the document as a DOM tree and\ntraverse it to find the information you need,\nuse 'Text.Taggy.DOM.parseDOM'. This is especially useful\nwhen combined with the helpful combinators from\n\"Text.Taggy.Combinators\".\n\nIf you build some HTML manually\nor just transform some existing DOM tree\nand want to turn it into a 'Data.Text.Lazy.Text'\nhead to \"Text.Taggy.Renderer\" and look at 'Text.Taggy.Renderer.render'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "taggy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.taggy)
          ];
        };
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.vector)
            (hsPkgs.attoparsec)
            (hsPkgs.unordered-containers)
          ];
        };
        "integration" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.hspec-attoparsec)
            (hsPkgs.vector)
            (hsPkgs.attoparsec)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      benchmarks = {
        "taggytagsoup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.taggy)
            (hsPkgs.tagsoup)
            (hsPkgs.criterion)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }