{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dump = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-time-alloc-prof";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Mitsutoshi Aoe";
      maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
      author = "Mitsutoshi Aoe";
      homepage = "https://github.com/maoe/ghc-time-alloc-prof";
      url = "";
      synopsis = "Library for parsing GHC time and allocation profiling reports";
      description = "Library for parsing GHC time and allocation profiling reports";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "dump" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.containers)
            (hsPkgs.ghc-time-alloc-prof)
            (hsPkgs.text)
          ];
        };
      };
    };
  }