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
      specVersion = "1.10";
      identifier = {
        name = "viewprof";
        version = "0.0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/viewprof";
      url = "";
      synopsis = "Text-based interactive GHC .prof viewer";
      description = "Text-based interactive GHC .prof viewer";
      buildType = "Simple";
    };
    components = {
      exes = {
        "viewprof" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.containers)
            (hsPkgs.ghc-prof)
            (hsPkgs.lens)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            (hsPkgs.vty)
          ];
        };
      };
    };
  }