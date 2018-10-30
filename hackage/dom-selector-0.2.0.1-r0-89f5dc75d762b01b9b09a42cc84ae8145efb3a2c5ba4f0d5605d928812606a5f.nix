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
      specVersion = "1.8";
      identifier = {
        name = "dom-selector";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2012-2013 by Nebuta Lab";
      maintainer = "nebuta.office@gmail.com";
      author = "Nebuta Lab";
      homepage = "https://github.com/nebuta/";
      url = "";
      synopsis = "DOM traversal by CSS selectors for xml-conduit package";
      description = "CSS selector support for xml-conduit/html-conduit. This package supports compile-time checking of CSS selectors using quasiquotes. All DOM traversals are purely functional.\n\n* Quick start\n\n> -- The following pragmas should be put first (Haddock does not accept a pragma notation.)\n> -- LANGUAGE OverloadedStrings, QuasiQuotes\n>\n> module Main (main) where\n>\n> import Text.XML.Cursor (fromDocument)\n> import Text.HTML.DOM (parseLBS)\n> import qualified Data.Text.Lazy.IO as TI (putStrLn)\n>\n> import Control.Monad (mapM_)\n>\n> import Text.XML.Scraping (innerHtml)\n> import Text.XML.Selector.TH\n>\n> import Network.HTTP.Conduit\n> import Data.Conduit.Binary\n>\n> main :: IO ()\n> main = do\n>    root <- fmap (fromDocument . parseLBS) \$ simpleHttp \"https://news.google.com/\"\n>    let cs = queryT [jq| h2 span.titletext |] root\n>    mapM_ (TI.putStrLn . innerHtml) cs\n\nYou can use some elementary CSS selectors for traversing a DOM tree.\n\n* Other examples\n\n<https://github.com/nebuta/dom-selector/tree/master/examples>\n\nChanges:\n\nVer 0.2.1: Inappropriate Safe Haskell pragma was removed.\n\nVer 0.2: All scraping functions in Text.XML.Scraping return lazy text now. They are implemented with a type class.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.xml-conduit)
          (hsPkgs.html-conduit)
          (hsPkgs.containers)
          (hsPkgs.blaze-html)
          (hsPkgs.parsec)
          (hsPkgs.QuickCheck)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.xml-conduit)
            (hsPkgs.html-conduit)
            (hsPkgs.containers)
            (hsPkgs.blaze-html)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift)
          ];
        };
      };
    };
  }