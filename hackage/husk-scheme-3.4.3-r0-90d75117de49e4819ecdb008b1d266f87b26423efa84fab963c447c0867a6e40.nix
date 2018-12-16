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
      specVersion = "1.4";
      identifier = {
        name = "husk-scheme";
        version = "3.4.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "https://github.com/justinethier/husk-scheme";
      url = "";
      synopsis = "R5RS Scheme interpreter program and library.";
      description = "A dialect of R5RS Scheme written in Haskell. Provides advanced\nfeatures including continuations, hygienic macros, a Haskell FFI,\nand the full numeric tower.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskeline)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
        ];
      };
      exes = {
        "huski" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
          ];
        };
      };
    };
  }