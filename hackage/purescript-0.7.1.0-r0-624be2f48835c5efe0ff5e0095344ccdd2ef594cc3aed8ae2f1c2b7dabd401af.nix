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
      specVersion = "1.8";
      identifier = {
        name = "purescript";
        version = "0.7.1.0";
      };
      license = "MIT";
      copyright = "(c) 2013-15 Phil Freeman, (c) 2014-15 Gary Burgess";
      maintainer = "Phil Freeman <paf31@cantab.net>";
      author = "Phil Freeman <paf31@cantab.net>,\nGary Burgess <gary.burgess@gmail.com>,\nHardy Jones <jones3.hardy@gmail.com>,\nHarry Garrood <harry@garrood.me>";
      homepage = "http://www.purescript.org/";
      url = "";
      synopsis = "PureScript Programming Language Compiler";
      description = "A small strongly, statically typed programming language with expressive types, inspired by Haskell and compiling to Javascript.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.dlist)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.utf8-string)
          (hsPkgs.pattern-arrows)
          (hsPkgs.time)
          (hsPkgs.boxes)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.bower-json)
          (hsPkgs.aeson-better-errors)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.language-javascript)
          (hsPkgs.syb)
        ];
      };
      exes = {
        "psc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.purescript)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.Glob)
          ];
        };
        "psci" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.haskeline)
            (hsPkgs.purescript)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.Glob)
          ];
        };
        "psc-docs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.purescript)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.split)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Glob)
          ];
        };
        "psc-publish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.purescript)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.pattern-arrows)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.boxes)
            (hsPkgs.split)
            (hsPkgs.Glob)
            (hsPkgs.aeson-better-errors)
            (hsPkgs.transformers-compat)
            (hsPkgs.bower-json)
            (hsPkgs.semigroups)
            (hsPkgs.safe)
          ];
        };
        "psc-hierarchy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.purescript)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.Glob)
          ];
        };
        "psc-bundle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.purescript)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.optparse-applicative)
            (hsPkgs.Glob)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.purescript)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.transformers-compat)
            (hsPkgs.time)
          ];
        };
        "psci-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.haskeline)
            (hsPkgs.purescript)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.process)
            (hsPkgs.HUnit)
            (hsPkgs.time)
            (hsPkgs.Glob)
          ];
        };
      };
    };
  }