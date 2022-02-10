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
      specVersion = "1.6";
      identifier = { name = "attoparsec-enumerator"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/attoparsec-enumerator/";
      url = "";
      synopsis = "Pass input from an enumerator to an Attoparsec parser.";
      description = "This library allows an Attoparsec parser to receive input incrementally\nfrom an enumerator. This could be used for parsing large files, or\nimplementing binary network protocols.\n\n> (-# LANGUAGE OverloadedStrings #-)\n>\n> import Control.Applicative\n> import Data.Attoparsec\n> import Data.Attoparsec.Enumerator\n> import Data.Enumerator\n> import Data.Enumerator.Binary (enumHandle)\n> import Data.Enumerator.List\n> import System.IO\n>\n> parser = string \"foo\" <|> string \"bar\"\n>\n> main = do\n>     xy <- run_ (enumHandle 1 stdin $$ do\n>         x <- iterParser parser\n>         y <- iterParser parser\n>         return (x, y))\n>     print xy";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }