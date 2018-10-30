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
      specVersion = "1.8";
      identifier = {
        name = "peggy";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c)2011, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://tanakh.github.com/Peggy";
      url = "";
      synopsis = "The Parser Generator for Haskell";
      description = "The Parser Generator for Haskell\n<http://tanakh.github.com/Peggy>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.ListLike)
          (hsPkgs.hashtables)
          (hsPkgs.monad-control)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
        ];
      };
      exes = {
        "peggy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.ListLike)
            (hsPkgs.hashtables)
            (hsPkgs.monad-control)
            (hsPkgs.template-haskell)
            (hsPkgs.haskell-src-meta)
          ];
        };
      };
    };
  }