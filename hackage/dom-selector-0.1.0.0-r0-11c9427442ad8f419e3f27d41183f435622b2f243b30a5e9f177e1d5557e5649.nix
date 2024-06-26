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
      identifier = { name = "dom-selector"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012 by Nebuta Lab           ";
      maintainer = "nebuta.office@gmail.com";
      author = "Nebuta Lab";
      homepage = "https://github.com/nebuta/";
      url = "";
      synopsis = "DOM traversal by CSS selectors for xml-conduit package";
      description = "CSS selector support for xml-conduit/html-conduit. This package supports compile-time checking of CSS selectors using quasiquotes.\n\n* Quick start\n\n> -- The following pragmas should be put first (Haddock does not accept a pragma notation.)\n> -- LANGUAGE OverloadedStrings, QuasiQuotes\n> module Main (main) where\n>\n> import Text.XML.Cursor\n> import qualified Text.HTML.DOM as H (readFile)\n> import qualified Data.Text.Lazy.IO as TI (putStrLn)\n> import Text.XML.Scraping (innerHtml)\n> import Text.XML.Selector.TH\n>\n> main :: IO ()\n> main = do\n>   c <- fmap fromDocument $ H.readFile \"input.html\"\n>   let cs = queryT [jq| ul#foo > li.bar |] c\n>   TI.putStrLn $ innerHtml cs\n\nYou can use some elementary CSS selectors for traversing a DOM tree.\n\n* Other examples\n\n<https://github.com/nebuta/dom-selector/tree/master/examples>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."html-conduit" or (errorHandler.buildDepError "html-conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
        ];
        buildable = true;
      };
    };
  }