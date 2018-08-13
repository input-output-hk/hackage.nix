{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildexamples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "threepenny-editors";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "https://github.com/pepeiborra/threepenny-editors";
      url = "";
      synopsis = "Composable algebraic editors";
      description = "This package provides a type class 'Editable' and combinators to\neasily put together form-like editors for algebraic datatypes.\n\nNOTE: This library contains examples, but they are not built by default.\nTo build and install the example, use the @buildExamples@ flag like this\n\n@cabal install threepenny-editors -fbuildExamples@";
      buildType = "Simple";
    };
    components = {
      "threepenny-editors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.generics-sop)
          (hsPkgs.lens)
          (hsPkgs.profunctors)
          (hsPkgs.threepenny-gui)
          (hsPkgs.casing)
        ];
      };
      exes = {
        "parser" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.data-default)
            (hsPkgs.generics-sop)
            (hsPkgs.profunctors)
            (hsPkgs.threepenny-gui)
            (hsPkgs.threepenny-editors)
            (hsPkgs.haskell-src-exts)
          ];
        };
        "person" = {
          depends  = pkgs.lib.optionals (_flags.buildexamples) [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.data-default)
            (hsPkgs.generics-sop)
            (hsPkgs.profunctors)
            (hsPkgs.threepenny-gui)
            (hsPkgs.threepenny-editors)
          ];
        };
      };
    };
  }