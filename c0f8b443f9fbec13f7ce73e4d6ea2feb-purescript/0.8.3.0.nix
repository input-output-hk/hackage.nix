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
      specVersion = "1.8";
      identifier = {
        name = "purescript";
        version = "0.8.3.0";
      };
      license = "MIT";
      copyright = "(c) 2013-15 Phil Freeman, (c) 2014-15 Gary Burgess";
      maintainer = "Phil Freeman <paf31@cantab.net>";
      author = "Phil Freeman <paf31@cantab.net>,\nGary Burgess <gary.burgess@gmail.com>,\nHardy Jones <jones3.hardy@gmail.com>,\nHarry Garrood <harry@garrood.me>,\nChristoph Hegemann <christoph.hegemann1337@gmail.com>";
      homepage = "http://www.purescript.org/";
      url = "";
      synopsis = "PureScript Programming Language Compiler";
      description = "A small strongly, statically typed programming language with expressive types, inspired by Haskell and compiling to Javascript.";
      buildType = "Simple";
    };
    components = {
      "purescript" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
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
          (hsPkgs.Glob)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.parallel)
          (hsPkgs.sourcemap)
          (hsPkgs.stm)
          (hsPkgs.regex-tdfa)
          (hsPkgs.edit-distance)
          (hsPkgs.fsnotify)
          (hsPkgs.monad-logger)
          (hsPkgs.pipes)
          (hsPkgs.pipes-http)
          (hsPkgs.http-types)
        ];
      };
      exes = {
        "psc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
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
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
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
            (hsPkgs.base-compat)
            (hsPkgs.boxes)
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
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ];
        };
        "psc-publish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.purescript)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.optparse-applicative)
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
        "psc-ide-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.purescript)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.base-compat)
          ];
        };
        "psc-ide-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.network)
            (hsPkgs.base-compat)
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
            (hsPkgs.Glob)
            (hsPkgs.aeson-better-errors)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.base-compat)
            (hsPkgs.haskeline)
            (hsPkgs.optparse-applicative)
            (hsPkgs.boxes)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.stm)
            (hsPkgs.text)
          ];
        };
      };
    };
  }