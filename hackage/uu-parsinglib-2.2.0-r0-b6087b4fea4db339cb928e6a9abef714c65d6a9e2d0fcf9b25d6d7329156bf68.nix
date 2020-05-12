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
      specVersion = "1.2";
      identifier = { name = "uu-parsinglib"; version = "2.2.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "doaitse@swierstra.net       ";
      author = "Doaitse Swierstra";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
      url = "";
      synopsis = "New version of the Utrecht University parser combinator library        ";
      description = "New version of the Utrecht University parser combinator library, providing online, error correction,\nannotation free, applicative style parser combinators which also provides a monadic interface\n\nThe file Text.ParserCombinators.UU.Examples contains a ready-made main function,\nwhich can be called to see the error correction at work.\n\nThe library is based on ideas described in the paper:\n\n* S.Doaitse Swierstra.\n/Combinator Parsing: A Short Tutorial/.\nTechnical Report, Universiteit Utrecht\n(<http://www.cs.uu.nl/research/techreps/repo/CS-2008/2008-044.pdf>).\n\nThis tutorial will also appear in LNCS Volume 5520, which contains the lecture notes from\nthe Lernet Summerschool.\n\nVersions above 2.1:\n\n* based on Control.Applicative\n\nVersions above 2.2:\n\n*  make use of type families\n\n*  contain a module with many list-based derived combinators\n";
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