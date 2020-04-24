{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "vector-space"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/vector-space";
      url = "http://code.haskell.org/vector-space";
      synopsis = "Vector & affine spaces, linear maps, and derivatives (requires ghc 6.9 or better)";
      description = "/vector-space/ provides classes and generic operations for vector\nspaces and affine spaces.  It also defines a type of infinite towers\nof generalized derivatives.  A generalized derivative is a linear\ntransformation rather than one of the common concrete representations\n(scalars, vectors, matrices, ...).\n\n/Warning/: this package depends on type families working fairly well,\nand requires ghc version at least 6.9.\n\nProject wiki page: <http://haskell.org/haskellwiki/vector-space>\n\n&#169; 2008-2010 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."MemoTrie" or ((hsPkgs.pkgs-errors).buildDepError "MemoTrie"))
          (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "6.10"
          then false
          else true;
        };
      };
    }