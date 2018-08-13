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
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Sam Boosalis";
      homepage = "https://github.com/sboosali/enumerate";
      url = "";
      synopsis = "enumerate all the values in a finite type (automatically)";
      description = "provides\n\n* (1) a typeclass for enumerating all values in a finite type,\n* (2) a generic instance for automatic deriving, and\n* (3) helpers that reify functions (partial or total, monadic or pure)\ninto a Map.\n\nsee the \"Enumerable\" module for extensive documentation.";
      buildType = "Simple";
    };
    components = {
      "enumerate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.array)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.vinyl)
          (hsPkgs.deepseq)
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
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.enumerate)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }