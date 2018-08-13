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
      specVersion = "1.6";
      identifier = {
        name = "kan-extensions";
        version = "4.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/kan-extensions/";
      url = "";
      synopsis = "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads";
      description = "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads";
      buildType = "Simple";
    };
    components = {
      "kan-extensions" = {
        depends  = [
          (hsPkgs.adjunctions)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.distributive)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
        ];
      };
    };
  }