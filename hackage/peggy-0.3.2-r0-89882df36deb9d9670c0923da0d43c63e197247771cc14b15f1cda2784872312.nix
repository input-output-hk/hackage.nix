{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-example = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "peggy";
        version = "0.3.2";
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
        "peggy-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.peggy)
          ];
        };
      };
    };
  }