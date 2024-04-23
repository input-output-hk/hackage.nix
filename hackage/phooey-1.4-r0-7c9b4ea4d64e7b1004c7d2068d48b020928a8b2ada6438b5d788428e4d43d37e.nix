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
      identifier = { name = "phooey"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott ";
      homepage = "http://haskell.org/haskellwiki/Phooey";
      url = "";
      synopsis = "Functional user interfaces";
      description = "Phooey is a library for functional UIs, providing three different\nfunctional interfaces: Monad, Applicative, and Arrow.  See the\ncorrespondingly named modules in the list below.  The other modules are\nexposed for extensibility.\n\nTry out the examples in @src\\/Examples\\/@.\n\nSee also\n\n* The project wiki page <http://haskell.org/haskellwiki/phooey>\n\n* Use of Phooey for composable interfaces in the TV library:\n<http://haskell.org/haskellwiki/GuiTV>\n\n* The implementation of data-driven computation (used in Phooey) from\nthe TypeCompose library: <http://haskell.org/haskellwiki/TypeCompose>\n\nThis page and the module documentation pages have links to colorized\nsource code and to wiki pages where you can read and contribute /user\ncomments/.  Enjoy!\n\n&#169; 2006 by Conal Elliott; BSD3 license.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
          (hsPkgs."DataDriven" or (errorHandler.buildDepError "DataDriven"))
        ];
        buildable = true;
      };
    };
  }