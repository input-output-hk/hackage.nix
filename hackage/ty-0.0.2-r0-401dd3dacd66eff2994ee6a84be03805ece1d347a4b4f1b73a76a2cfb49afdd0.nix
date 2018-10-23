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
        name = "ty";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/ty";
      url = "http://code.haskell.org/ty";
      synopsis = "Typed type representations and equality proofs";
      description = "Typed type representations and equality proofs\n\nProject wiki page: <http://haskell.org/haskellwiki/ty>\n\nCopyright 2009 Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "ty" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }