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
      identifier = { name = "welshy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2013 Michael Schröder";
      maintainer = "mcschroeder@gmail.com";
      author = "Michael Schröder";
      homepage = "https://github.com/mcschroeder/welshy";
      url = "";
      synopsis = "Haskell web framework (because Scotty had trouble yodeling)";
      description = "A Haskell web framework heavily influenced by the excellent Scotty,\nwhich was in turn influenced by Ruby's Sinatra.\n\nWelshy strives to make it easier to do error handling without overly\ncomplicating the control flow. An example:\n\n@&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;@\n\n> import Control.Applicative\n> import Control.Monad\n> import qualified Data.Text.Lazy as T\n> import Network.HTTP.Types\n> import Web.Welshy\n>\n> fibs :: [Int]\n> fibs = 0 : 1 : zipWith (+) fibs (tail fibs)\n>\n> main :: IO ()\n> main = welshy 3000 \$ do\n>     get \"/fibs\" \$ do\n>         offset <- queryParam \"offset\" <|> return 0\n>         length <- queryParam \"length\"\n>\n>         when (offset < 0 || length < 0)\n>              (halt \$ status badRequest400)\n>\n>         when (offset + length > 1000)\n>              (halt \$ status requestedRangeNotSatisfiable416)\n>\n>         let result = take length \$ drop offset fibs\n>         text \$ T.pack \$ show result\n\nSome of the features demonstrated here:\n\n* You can 'halt' the current action at any point and continue\nwith a different one.\n\n* Functions like 'queryParam' and 'jsonParam' have built-in error handling.\n\n* Welshy's 'Action' monad is an instance of 'Alternative'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      };
    }