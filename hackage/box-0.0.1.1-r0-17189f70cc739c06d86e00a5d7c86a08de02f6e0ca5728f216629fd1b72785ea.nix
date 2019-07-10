{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "box"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2017";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/box#readme";
      url = "";
      synopsis = "boxes";
      description = "concurrent, effectful boxes";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.concurrency)
          (hsPkgs.contravariant)
          (hsPkgs.data-default)
          (hsPkgs.dejafu)
          (hsPkgs.exceptions)
          (hsPkgs.flow)
          (hsPkgs.foldl)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.mmorph)
          (hsPkgs.pipes)
          (hsPkgs.profunctors)
          (hsPkgs.protolude)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.streaming)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          ];
        };
      exes = {
        "box-test" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.box)
            (hsPkgs.concurrency)
            (hsPkgs.contravariant)
            (hsPkgs.data-default)
            (hsPkgs.dejafu)
            (hsPkgs.exceptions)
            (hsPkgs.flow)
            (hsPkgs.foldl)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.mmorph)
            (hsPkgs.pipes)
            (hsPkgs.profunctors)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.streaming)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.box)
            (hsPkgs.concurrency)
            (hsPkgs.contravariant)
            (hsPkgs.data-default)
            (hsPkgs.dejafu)
            (hsPkgs.doctest)
            (hsPkgs.exceptions)
            (hsPkgs.flow)
            (hsPkgs.foldl)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.mmorph)
            (hsPkgs.pipes)
            (hsPkgs.profunctors)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.streaming)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            ];
          };
        };
      };
    }