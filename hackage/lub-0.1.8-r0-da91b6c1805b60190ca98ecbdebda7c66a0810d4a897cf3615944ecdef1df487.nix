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
      specVersion = "1.10";
      identifier = { name = "lub"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2014 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott ";
      homepage = "http://haskell.org/haskellwiki/lub";
      url = "http://code.haskell.org/~conal/code/lub";
      synopsis = "information operators: least upper bound (lub) and greatest lower bound (glb)";
      description = "Lub is an experiment in computing least upper information bounds on\n(partially defined) functional values.  It provides a 'lub' function\nthat is consistent with the 'unamb' operator but has a more liberal\nprecondition.  Where 'unamb' requires its arguments to equal when\nneither is bottom, 'lub' is able to synthesize a value from the\npartial information contained in both of its arguments.\n\nThis module also defines 'glb', which intersects information.\n\nProject wiki page: <http://haskell.org/haskellwiki/lub>\n\n&#169; 2008-2014 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unamb" or (errorHandler.buildDepError "unamb"))
        ];
        buildable = true;
      };
    };
  }