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
      specVersion = "1.6";
      identifier = {
        name = "kan-extensions";
        version = "3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/kan-extensions/";
      url = "";
      synopsis = "Kan extensions, the Yoneda lemma, and (co)density (co)monads";
      description = "Kan extensions, the Yoneda lemma, and (co)density (co)monads";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.adjunctions)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.comonad-transformers)
          (hsPkgs.comonads-fd)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.distributive)
          (hsPkgs.free)
          (hsPkgs.keys)
          (hsPkgs.mtl)
          (hsPkgs.representable-functors)
          (hsPkgs.semigroupoids)
          (hsPkgs.speculation)
          (hsPkgs.transformers)
        ];
      };
    };
  }