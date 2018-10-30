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
        name = "repl-toolkit";
        version = "0.2.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/repl-toolkit";
      url = "";
      synopsis = "Toolkit for quickly whipping up command-line interfaces.";
      description = "A simple toolkit for quickly whipping up REPLs, input validation and sets of commands included.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.functor-monadic)
          (hsPkgs.text)
          (hsPkgs.ListLike)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.numericpeano)
          (hsPkgs.listsafe)
          (hsPkgs.monad-loops)
        ];
      };
    };
  }