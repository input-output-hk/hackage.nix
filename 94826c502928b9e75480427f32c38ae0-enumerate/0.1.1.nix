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
      specVersion = "1.10";
      identifier = {
        name = "enumerate";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Sam Boosalis";
      homepage = "https://github.com/sboosali/enumerate";
      url = "";
      synopsis = "enumerate all the values in a finite type (automatically)";
      description = "provides (1) a typeclass for enumerating all values in a finite type, (2) a generic instance for automatic deriving, and (3) helpers that reify functions (partial or total, monadic or pure) into a Map.";
      buildType = "Simple";
    };
    components = {
      "enumerate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.array)
          (hsPkgs.semigroups)
          (hsPkgs.exceptions)
          (hsPkgs.MemoTrie)
          (hsPkgs.deepseq)
          (hsPkgs.vinyl)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "enumerate-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.enumerate)
          ];
        };
      };
    };
  }