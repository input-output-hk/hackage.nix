{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { release = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "purescript";
        version = "0.11.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013-16 Phil Freeman, (c) 2014-16 Gary Burgess";
      maintainer = "Phil Freeman <paf31@cantab.net>";
      author = "Phil Freeman <paf31@cantab.net>, Gary Burgess <gary.burgess@gmail.com>, Hardy Jones <jones3.hardy@gmail.com>, Harry Garrood <harry@garrood.me>, Christoph Hegemann <christoph.hegemann1337@gmail.com>";
      homepage = "http://www.purescript.org/";
      url = "";
      synopsis = "PureScript Programming Language Compiler";
      description = "A small strongly, statically typed programming language with expressive types, inspired by Haskell and compiling to JavaScript.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-better-errors)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.blaze-html)
          (hsPkgs.bower-json)
          (hsPkgs.boxes)
          (hsPkgs.bytestring)
          (hsPkgs.cheapskate)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.edit-distance)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.Glob)
          (hsPkgs.haskeline)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.language-javascript)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.pattern-arrows)
          (hsPkgs.pipes)
          (hsPkgs.pipes-http)
          (hsPkgs.process)
          (hsPkgs.protolude)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.sourcemap)
          (hsPkgs.spdx)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "purs" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-better-errors)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.blaze-html)
            (hsPkgs.bower-json)
            (hsPkgs.boxes)
            (hsPkgs.bytestring)
            (hsPkgs.cheapskate)
            (hsPkgs.clock)
            (hsPkgs.containers)
            (hsPkgs.data-ordlist)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.edit-distance)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.Glob)
            (hsPkgs.haskeline)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.language-javascript)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.pattern-arrows)
            (hsPkgs.pipes)
            (hsPkgs.pipes-http)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.sourcemap)
            (hsPkgs.spdx)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.file-embed)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.purescript)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
          ] ++ pkgs.lib.optional (!flags.release) (hsPkgs.gitrev);
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-better-errors)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.blaze-html)
            (hsPkgs.bower-json)
            (hsPkgs.boxes)
            (hsPkgs.bytestring)
            (hsPkgs.cheapskate)
            (hsPkgs.clock)
            (hsPkgs.containers)
            (hsPkgs.data-ordlist)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.edit-distance)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.Glob)
            (hsPkgs.haskeline)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.language-javascript)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.parsec)
            (hsPkgs.pattern-arrows)
            (hsPkgs.pipes)
            (hsPkgs.pipes-http)
            (hsPkgs.process)
            (hsPkgs.protolude)
            (hsPkgs.regex-tdfa)
            (hsPkgs.safe)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.sourcemap)
            (hsPkgs.spdx)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.syb)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
            (hsPkgs.purescript)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.HUnit)
            (hsPkgs.silently)
          ];
        };
      };
    };
  }