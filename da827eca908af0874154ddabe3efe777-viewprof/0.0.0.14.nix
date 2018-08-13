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
      specVersion = "1.10";
      identifier = {
        name = "viewprof";
        version = "0.0.0.14";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2018 Mitsutoshi Aoe";
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