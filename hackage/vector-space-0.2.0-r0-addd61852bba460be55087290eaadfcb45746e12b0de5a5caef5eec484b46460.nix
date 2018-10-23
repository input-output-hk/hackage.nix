{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "vector-space";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/vector-space";
      url = "http://code.haskell.org/vector-space";
      synopsis = "Vector & affine spaces, plus derivatives";
      description = "vector-space provides classes and generic operations for vector\nspaces and affine spaces.  It also defines a type of infinite towers\nof generalized derivatives.  A generalized derivative is a linear\ntransformation rather than one of the common concrete representations\n(scalars, vectors, matrices, ...).\n\nProject wiki page: <http://haskell.org/haskellwiki/vector-space>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "vector-space" = {};
      exes = {
        "Perf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.old-time)
          ];
        };
      };
    };
  }