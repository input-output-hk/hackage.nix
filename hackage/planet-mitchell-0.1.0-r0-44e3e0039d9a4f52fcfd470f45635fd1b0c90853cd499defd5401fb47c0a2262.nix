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
      specVersion = "2.0";
      identifier = {
        name = "planet-mitchell";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/planet-mitchell";
      url = "";
      synopsis = "Planet Mitchell";
      description = "Planet Mitchell.\n\nThis package provides a curated, highly unstable collection of reorganized\nre-exports. Mostly for personal use at the moment, me but please poke around\nand see README.md for a bit more information ;)\n\nA note on module names:\n\n/Partial/ means the module contains partial functions that may throw\nexceptions if preconditions are violated.\n\n/Unsafe/ means the module contains unsafe functions that either:\n\n* assume that preconditions hold, e.g. @unsafeEmailAddress@, which constructs\nan @EmailAddress@ from a @ByteString@ that is assumed to be valid.\n\n* do other suspicious things like interleave @IO@ with evaluation, as\n@unsafePerformIO@, or lie to the type checker, as @unsafeCoerce@. In a word,\ndragons.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.aeson-pretty)
          (hsPkgs.aeson-qq)
          (hsPkgs.ansi-terminal)
          (hsPkgs.approximate)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.atomic-primops)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bits)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.case-insensitive)
          (hsPkgs.cborg)
          (hsPkgs.comonad)
          (hsPkgs.compact)
          (hsPkgs.compactable)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.deepseq)
          (hsPkgs.Diff)
          (hsPkgs.distributive)
          (hsPkgs.dlist)
          (hsPkgs.double-conversion)
          (hsPkgs.Earley)
          (hsPkgs.email-validate)
          (hsPkgs.erf)
          (hsPkgs.exact-pi)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.fast-digits)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.foldl)
          (hsPkgs.free)
          (hsPkgs.generic-aeson)
          (hsPkgs.generic-lens)
          (hsPkgs.half)
          (hsPkgs.hashable)
          (hsPkgs.heaps)
          (hsPkgs.ilist)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.integer-logarithms)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.list-transformer)
          (hsPkgs.logict)
          (hsPkgs.managed)
          (hsPkgs.megaparsec)
          (hsPkgs.mmorph)
          (hsPkgs.monad-ste)
          (hsPkgs.mtl)
          (hsPkgs.multiset)
          (hsPkgs.mwc-random)
          (hsPkgs.neat-interpolation)
          (hsPkgs.network)
          (hsPkgs.network-info)
          (hsPkgs.network-uri)
          (hsPkgs.nf)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parallel)
          (hsPkgs.parser-combinators)
          (hsPkgs.pointed)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.primitive)
          (hsPkgs.profunctors)
          (hsPkgs.psqueues)
          (hsPkgs.random-bytestring)
          (hsPkgs.reactive-banana)
          (hsPkgs.reflection)
          (hsPkgs.regex-applicative)
          (hsPkgs.safe)
          (hsPkgs.say)
          (hsPkgs.scientific)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.semilattices)
          (hsPkgs.serialise)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-containers)
          (hsPkgs.stringsearch)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.text-metrics)
          (hsPkgs.text-short)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.typed-process)
          (hsPkgs.unagi-chan)
          (hsPkgs.unique)
          (hsPkgs.unix)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.uuid)
          (hsPkgs.uuid-types)
          (hsPkgs.vault)
          (hsPkgs.vector)
          (hsPkgs.vector-builder)
          (hsPkgs.writer-cps-mtl)
        ];
      };
    };
  }