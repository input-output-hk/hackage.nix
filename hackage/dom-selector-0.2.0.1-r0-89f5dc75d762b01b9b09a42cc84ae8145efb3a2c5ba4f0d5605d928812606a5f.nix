let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dom-selector"; version = "0.2.0.1"; };
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
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."html-conduit" or (buildDepError "html-conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            (hsPkgs."html-conduit" or (buildDepError "html-conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            ];
          };
        };
      };
    }