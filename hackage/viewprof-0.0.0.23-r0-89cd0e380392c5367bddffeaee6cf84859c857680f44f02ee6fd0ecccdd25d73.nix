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
        version = "0.0.0.23";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2018 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/viewprof";
      url = "";
      synopsis = "Text-based interactive GHC .prof viewer";
      description = "viewprof is a text-based interactive GHC .prof viewer.\n\nYou can find a screenshot and some explanation in\n<https://github.com/maoe/viewprof#readme the README>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "viewprof" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.containers)
            (hsPkgs.directory)
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