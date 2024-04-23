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
      specVersion = "1.0";
      identifier = { name = "TypeCompose"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott ";
      homepage = "http://haskell.org/haskellwiki/TypeCompose";
      url = "http://darcs.haskell.org/packages/TypeCompose";
      synopsis = "Type composition classes & instances";
      description = "TypeCompose provides some classes & instances for forms of type\ncomposition, as well as some modules who haven't yet found a home.\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/TypeCompose>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute /user comments/.  Enjoy!\n\n&#169; 2007 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }