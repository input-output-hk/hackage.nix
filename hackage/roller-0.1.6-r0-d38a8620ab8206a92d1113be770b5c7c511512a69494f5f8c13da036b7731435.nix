{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "roller";
        version = "0.1.6";
      };
      license = "GPL-2.0-only";
      copyright = "(c) 2015 Piotr Justyna";
      maintainer = "piotr.justyna@gmail.com";
      author = "Piotr Justyna";
      homepage = "https://github.com/PiotrJustyna/roller";
      url = "";
      synopsis = "Playing with applicatives and dice!";
      description = "A basic library and program for simulated rolling of\npolyhedral dice, as would be used in pen and paper RPGs.";
      buildType = "Simple";
    };
    components = {
      "roller" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.regex-applicative)
          (hsPkgs.optparse-applicative)
        ];
      };
      exes = {
        "roller" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.regex-applicative)
            (hsPkgs.optparse-applicative)
            (hsPkgs.roller)
          ];
        };
      };
    };
  }