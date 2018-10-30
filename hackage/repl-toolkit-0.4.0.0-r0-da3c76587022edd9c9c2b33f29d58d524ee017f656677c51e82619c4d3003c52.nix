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
        version = "0.4.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/repl-toolkit";
      url = "";
      synopsis = "Toolkit for quickly whipping up config files and command-line interfaces.";
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
          (hsPkgs.exceptions)
          (hsPkgs.parsec)
          (hsPkgs.numericpeano)
          (hsPkgs.listsafe)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.system-filepath)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.aeson)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }