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
      specVersion = "2.0";
      identifier = {
        name = "planet-mitchell";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/planet-mitchell";
      url = "";
      synopsis = "Planet Mitchell";
      description = "Planet Mitchell.\n\nThis package provides a curated, highly unstable collection of reorganized\nre-exports. Mostly for personal use at the moment, me but please poke around\nand see README.md for a bit more information ;)";
      buildType = "Simple";
    };
    components = {
      "planet-mitchell" = {
        depends  = [
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
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.deepseq)
          (hsPkgs.distributive)
          (hsPkgs.dlist)
          (hsPkgs.double-conversion)
          (hsPkgs.Earley)
          (hsPkgs.envparse)
          (hsPkgs.erf)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.foldl)
          (hsPkgs.free)
          (hsPkgs.gauge)
          (hsPkgs.generic-aeson)
          (hsPkgs.half)
          (hsPkgs.hashable)
          (hsPkgs.heaps)
          (hsPkgs.hedgehog)
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
          (hsPkgs.reactive-banana)
          (hsPkgs.reflection)
          (hsPkgs.regex-applicative)
          (hsPkgs.scientific)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.semilattices)
          (hsPkgs.serialise)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-containers)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.text-short)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.typed-process)
          (hsPkgs.unagi-chan)
          (hsPkgs.unix)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.uuid)
          (hsPkgs.uuid-types)
          (hsPkgs.vault)
          (hsPkgs.vector)
          (hsPkgs.vector-builder)
          (hsPkgs.weigh)
          (hsPkgs.writer-cps-mtl)
        ];
      };
    };
  }