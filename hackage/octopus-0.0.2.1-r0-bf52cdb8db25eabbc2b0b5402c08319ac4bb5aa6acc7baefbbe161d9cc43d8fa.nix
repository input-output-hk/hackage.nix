{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "octopus";
        version = "0.0.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2014 Zankoku Okuno";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Zankoku Okuno";
      homepage = "https://github.com/Zankoku-Okuno/octopus/";
      url = "";
      synopsis = "Lisp with more dynamism, more power, more simplicity.";
      description = "Octopus is a highly dynamic programming language with an astounding (I think)\npower-to-weight ratio (expressivity-to-complexity). With just a handful of\nsimple primitives, Octopus provides a complete programming environment. Its\nmain focus is on complete programmer control, not on performance or static\nanalysis. While the user can shoot themselves, the most natural methods should\nbe the most reasonable.\nOctopus' is most useful for well-contained problems, for teaching, as a\n(possibly embedded) scripting language, anywhere boilerplate is a serious issue,\nfor problems involving higher math, and for brain-stretching.\nOctopus is currently in the 'useable' stage of development, in the same way\nfood might be food might be 'edible' instead of 'tasty'. We are under active\ndevelopment, working towards 'featureful'.";
      buildType = "Simple";
    };
    components = {
      "octopus" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.symbol)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.hexpr)
        ];
      };
      exes = {
        "octi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.symbol)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.hexpr)
          ];
        };
      };
    };
  }