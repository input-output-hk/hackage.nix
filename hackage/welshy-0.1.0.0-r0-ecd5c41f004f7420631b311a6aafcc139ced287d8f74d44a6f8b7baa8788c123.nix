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
      identifier = { name = "welshy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2013 Michael Schröder";
      maintainer = "mcschroeder@gmail.com";
      author = "Michael Schröder";
      homepage = "https://github.com/mcschroeder/welshy";
      url = "";
      synopsis = "Haskell web framework (because Scotty had trouble yodeling)";
      description = "A Haskell web framework heavily influenced by the excellent Scotty,\nwhich was in turn influenced by Ruby's Sinatra.\n\nWelshy strives to make it easier to do error handling without overly\ncomplicating the control flow. An example:\n\n@&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;@\n\n> import Control.Applicative\n> import Control.Monad\n> import qualified Data.Text.Lazy as T\n> import Network.HTTP.Types\n> import Web.Welshy\n>\n> fibs :: [Int]\n> fibs = 0 : 1 : zipWith (+) fibs (tail fibs)\n>\n> main :: IO ()\n> main = welshy 3000 $ do\n>     get \"/fibs\" $ do\n>         offset <- queryParam \"offset\" <|> return 0\n>         length <- queryParam \"length\"\n>\n>         when (offset < 0 || length < 0)\n>              (halt $ status badRequest400)\n>\n>         when (offset + length > 1000)\n>              (halt $ status requestedRangeNotSatisfiable416)\n>\n>         let result = take length $ drop offset fibs\n>         text $ T.pack $ show result\n\nSome of the features demonstrated here:\n\n* You can 'halt' the current action at any point and continue\nwith a different one.\n\n* Functions like 'queryParam' and 'jsonParam' have built-in error handling.\n\n* Welshy's 'Action' monad is an instance of 'Alternative'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }