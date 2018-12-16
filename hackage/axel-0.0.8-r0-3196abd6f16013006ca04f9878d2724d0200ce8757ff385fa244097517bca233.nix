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
      specVersion = "1.12";
      identifier = {
        name = "axel";
        version = "0.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Joshua Grosso";
      maintainer = "jgrosso256@gmail.com";
      author = "Joshua Grosso";
      homepage = "https://github.com/axellang/axel#readme";
      url = "";
      synopsis = "The Axel programming language.";
      description = "Haskell's semantics, plus Lisp's macros. Meet Axel – a purely functional, extensible, and powerful programming language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.freer-simple)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regex-pcre)
          (hsPkgs.singletons)
          (hsPkgs.strict)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.typed-process)
          (hsPkgs.vector)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "axel-exe" = {
          depends = [
            (hsPkgs.axel)
            (hsPkgs.base)
            (hsPkgs.freer-simple)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "axel-test" = {
          depends = [
            (hsPkgs.axel)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.freer-simple)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }