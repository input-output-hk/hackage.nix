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
        name = "language-python";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 Bernard James Pope";
      maintainer = "bjpop@csse.unimelb.edu.au";
      author = "Bernard James Pope";
      homepage = "http://projects.haskell.org/language-python/";
      url = "";
      synopsis = "Parsing and pretty printing of Python code.";
      description = "language-python is a Haskell library for lexical analysis, parsing\nand pretty printing Python code. It supports versions 2.x and 3.x of Python.";
      buildType = "Simple";
    };
    components = {
      "language-python" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
    };
  }