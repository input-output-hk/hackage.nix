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
      specVersion = "1.6";
      identifier = {
        name = "berp";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Bernard James Pope";
      maintainer = "florbitous@gmail.com";
      author = "Bernard James Pope (Bernie Pope)";
      homepage = "http://wiki.github.com/bjpop/berp/";
      url = "";
      synopsis = "An implementation of Python 3.";
      description = "Berp is an implementation of Python 3, written in Haskell.\nIt provides a compiler and an interpreter. In both cases\nthe input Python program is translated into Haskell code.\nThe compiler turns the Haskell code into machine code.\nThe interpreter runs the Haskell code immediately via\nthe GHCi interpreter. The user interface of the interpreter\nimitates the one provided by CPython.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer)
          (hsPkgs.template-haskell)
          (hsPkgs.array)
        ];
      };
      exes = {
        "berp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monads-tf)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.language-python)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.parseargs)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.haskeline)
            (hsPkgs.ghc-paths)
            (hsPkgs.extensible-exceptions)
          ];
        };
      };
    };
  }