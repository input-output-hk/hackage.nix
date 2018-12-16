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
      specVersion = "1.10";
      identifier = {
        name = "enumerate";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Sam Boosalis";
      homepage = "https://github.com/sboosali/enumerate";
      url = "";
      synopsis = "enumerate all the values in a finite type (automatically)";
      description = "provides a typeclass, a generic instance for automatic deriving, and helpers that reify functions (partial or total, monadic or pure) into a Map";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.MemoTrie)
          (hsPkgs.deepseq)
          (hsPkgs.vinyl)
          (hsPkgs.modular-arithmetic)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.enumerate)
          ];
        };
      };
    };
  }