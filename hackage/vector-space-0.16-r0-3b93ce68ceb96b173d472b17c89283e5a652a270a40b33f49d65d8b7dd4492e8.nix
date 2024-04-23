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
      identifier = { name = "vector-space"; version = "0.16"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott ";
      homepage = "";
      url = "";
      synopsis = "Vector & affine spaces, linear maps, and derivatives";
      description = "/vector-space/ provides classes and generic operations for vector\nspaces and affine spaces.  It also defines a type of infinite towers\nof generalized derivatives.  A generalized derivative is a linear\ntransformation rather than one of the common concrete representations\n(scalars, vectors, matrices, ...).\n\n/Warning/: this package depends on type families working fairly well,\nrequiring GHC version at least 6.9.\n\nProject wiki page: <http://haskell.org/haskellwiki/vector-space>\n\n&#169; 2008-2012 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."NumInstances" or (errorHandler.buildDepError "NumInstances"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.9")) (hsPkgs."void" or (errorHandler.buildDepError "void"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = if compiler.isGhc && compiler.version.lt "6.10"
          then false
          else true;
      };
    };
  }