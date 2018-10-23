{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "language-ninja";
        version = "0.2.0";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2017 Awake Security";
      maintainer = "opensource@awakesecurity.com";
      author = "Awake Security";
      homepage = "https://github.com/awakesecurity/language-ninja";
      url = "";
      synopsis = "A library for dealing with the Ninja build language.";
      description = "A Haskell library for parsing, pretty-printing, and\ncompiling the Ninja build language.\nThe best place to start reading this documentation is\nthe \"Language.Ninja\" module.";
      buildType = "Custom";
    };
    components = {
      "language-ninja" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.flow)
          (hsPkgs.hashable)
          (hsPkgs.intern)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.QuickCheck)
          (hsPkgs.semigroups)
          (hsPkgs.smallcheck)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.versions)
        ];
      };
      exes = {
        "ninja-lex" = {
          depends  = [
            (hsPkgs.language-ninja)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.flow)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "ninja-parse" = {
          depends  = [
            (hsPkgs.language-ninja)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.flow)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "ninja-compile" = {
          depends  = [
            (hsPkgs.language-ninja)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.flow)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.language-ninja)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.flow)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.monad-mock)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.semigroups)
            (hsPkgs.smallcheck)
            (hsPkgs.system-filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-html)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-lens)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            (hsPkgs.unordered-containers)
            (hsPkgs.versions)
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.0") [
            (hsPkgs.ghc)
            (hsPkgs.haddock-api)
            (hsPkgs.haddock-library)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.cabal-doctest)
          ];
        };
      };
    };
  }