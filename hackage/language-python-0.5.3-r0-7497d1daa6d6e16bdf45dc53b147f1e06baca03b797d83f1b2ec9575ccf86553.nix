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
        name = "language-python";
        version = "0.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2015 Bernard James Pope";
      maintainer = "florbitous@gmail.com";
      author = "Bernard James Pope (Bernie Pope)";
      homepage = "http://github.com/bjpop/language-python";
      url = "";
      synopsis = "Parsing and pretty printing of Python code.";
      description = "language-python is a Haskell library for lexical analysis, parsing\nand pretty printing Python code. It supports versions 2.x and 3.x of Python.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.utf8-string)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
        ];
      };
    };
  }