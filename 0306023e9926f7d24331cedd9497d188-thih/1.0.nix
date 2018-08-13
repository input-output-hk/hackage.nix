{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "thih";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Mark P Jones <mpj@cse.ogi.edu>";
      homepage = "http://web.cecs.pdx.edu/~mpj/thih/";
      url = "";
      synopsis = "Typing Haskell In Haskell";
      description = "Haskell benefits from a sophisticated type system, but implementors,\nprogrammers, and researchers suffer because it has no formal description.\nTo remedy this shortcoming, we present a Haskell program that implements\na Haskell typechecker, thus providing a mathematically rigorous specification\nin a notation that is familiar to Haskell users. We expect this program to fill\na serious gap in current descriptions of Haskell, both as a starting point\nfor discussions about existing features of the type system, and as a platform\nfrom which to explore new proposals.\n\nThis package is derived from the Haskell '98 + Multiparameter Type Classes package of THIH.";
      buildType = "Simple";
    };
    components = {
      "thih" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
        ];
      };
      exes = { "thih" = {}; };
    };
  }