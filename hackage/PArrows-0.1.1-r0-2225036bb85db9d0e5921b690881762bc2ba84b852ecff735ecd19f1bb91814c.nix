{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "PArrows";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "Einar Karttunen <ekarttun@cs.helsinki.fi>";
      homepage = "http://www.cs.helsinki.fi/u/ekarttun/PArrows/";
      url = "";
      synopsis = "Arrow parser combinators similar to Parsec";
      description = "PArrows is an arrows based parsing combinator library written in Haskell.\nThe library is similar to Parsec, but arrows allow for more future optimizations.\n\nCurrently PArrows is only tested with GHC, although making it work with Hugs should be easy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }