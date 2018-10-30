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
        name = "herms";
        version = "1.8.1.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jack.c.kiefer@gmail.com";
      author = "Jack Kiefer";
      homepage = "https://github.com/JackKiefer/herms";
      url = "";
      synopsis = "A command-line manager for delicious kitchen recipes";
      description = "HeRM's: a Haskell-based Recipe Manager for delicious kitchen recipes";
      buildType = "Simple";
    };
    components = {
      exes = {
        "herms" = {
          depends  = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.directory)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.optparse-applicative)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.vty)
          ];
        };
      };
    };
  }