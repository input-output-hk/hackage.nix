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
      specVersion = "1.4";
      identifier = {
        name = "husk-scheme";
        version = "2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "https://github.com/justinethier/husk-scheme";
      url = "";
      synopsis = "R5RS Scheme interpreter program and library.";
      description = "Husk is a dialect of Scheme written in Haskell that implements\na subset of the R5RS standard. Advanced R5RS features are\nprovided including continuations, hygenic macros, and the\nfull numeric tower.\nHusk is not intended to be a highly optimized version of Scheme.\nRather, the goal of the project is to provide a tight integration\nbetween Haskell and Scheme while at the same time providing a\ngreat opportunity for deeper understanding of both languages.\nIn addition, by closely following the R5RS standard, the intent is\nto develop a Scheme that is as compatible as possible with other\nR5RS Schemes.\nThis package includes a stand-alone executable as well as\na library that allows an interpreter to be embedded within an\nexisting Haskell application.";
      buildType = "Simple";
    };
    components = {
      "husk-scheme" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskeline)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "huski" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }