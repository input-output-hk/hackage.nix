{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "threepenny-editors";
        version = "0.5.6.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.casing)
          (hsPkgs.containers)
          (hsPkgs.generics-sop)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.threepenny-gui)
        ];
      };
      exes = {
        "crud" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.casing)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.profunctors)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.threepenny-gui)
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.containers)
            (hsPkgs.threepenny-editors)
          ];
        };
        "crud2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.casing)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.profunctors)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.threepenny-gui)
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.containers)
            (hsPkgs.threepenny-editors)
          ];
        };
        "parser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.casing)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.profunctors)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.threepenny-gui)
          ] ++ pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.haskell-src-exts)
            (hsPkgs.threepenny-editors)
          ];
        };
        "person" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.casing)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.profunctors)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.threepenny-gui)
          ] ++ pkgs.lib.optional (flags.buildexamples) (hsPkgs.threepenny-editors);
        };
        "person2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bifunctors)
            (hsPkgs.casing)
            (hsPkgs.containers)
            (hsPkgs.generics-sop)
            (hsPkgs.profunctors)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.threepenny-gui)
          ] ++ pkgs.lib.optional (flags.buildexamples) (hsPkgs.threepenny-editors);
        };
      };
    };
  }