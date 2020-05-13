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
      specVersion = "1.4";
      identifier = { name = "uu-parsinglib"; version = "2.4.1"; };
      license = "MIT";
      copyright = "S Doaitse Swierstra ";
      maintainer = "Doaitse Swierstra       ";
      author = "Doaitse Swierstra, Utrecht University";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
      url = "";
      synopsis = "Online, error-correcting parser combinators; monadic and applicative interfaces       ";
      description = "New version of the Utrecht University parser combinator library, which  provides online, error correction,\nannotation free, applicative style parser combinators. In addition to this we even  provide a monadic interface.\nParsers do analyse themselves to avoid commonly made errors\n\nThe file \"Text.ParserCombinators.UU.Examples\" contains a ready-made main function,\nwhich can be called to see the error correction at work. It contains extensive haddock documentation;\ntry all the small tests for yourself to see the correction process at work, and to get a\nfeeling for how to use the various combinators.\n\nThe file \"Text.ParserCombinators.UU.Changelog\" contains a log of the most recent changes and additions\n\nThe file \"Text.ParserCombinators.UU.README\" contains some references to background information\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }