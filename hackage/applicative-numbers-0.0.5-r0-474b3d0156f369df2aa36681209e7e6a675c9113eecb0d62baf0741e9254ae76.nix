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
      identifier = { name = "applicative-numbers"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott ";
      homepage = "http://haskell.org/haskellwiki/applicative-numbers";
      url = "http://code.haskell.org/applicative-numbers";
      synopsis = "Applicative-based numeric instances";
      description = "Any applicative functor can be given numeric instances in a boilerplate way.\nThe /applicative-numbers/ package provides an include file that makes it a\nsnap to define these instances.\nSee @src/ApplicativeNumeric-inc.hs@ for details and\n@src/Data/Numeric/Function.hs@ for an example.\n\nProject wiki page: <http://haskell.org/haskellwiki/applicative-numbers>\n\nCopyright 2009 Conal Elliott; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          ];
        buildable = true;
        };
      };
    }