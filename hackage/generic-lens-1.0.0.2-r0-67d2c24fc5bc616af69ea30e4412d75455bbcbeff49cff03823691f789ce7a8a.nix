{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dump-core = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "generic-lens";
        version = "1.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kiss.csongor.kiss@gmail.com";
      author = "Csongor Kiss";
      homepage = "https://github.com/kcsongor/generic-lens";
      url = "";
      synopsis = "Generically derive traversals, lenses and prisms.";
      description = "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "generic-lens-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.profunctors)
            (hsPkgs.HUnit)
          ];
        };
        "generic-lens-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.profunctors)
            (hsPkgs.inspection-testing)
            (hsPkgs.HUnit)
          ] ++ pkgs.lib.optional (flags.dump-core) (hsPkgs.dump-core);
        };
        "generic-lens-bifunctor" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.HUnit)
          ] ++ pkgs.lib.optional (flags.dump-core) (hsPkgs.dump-core);
        };
        "generic-lens-syb-tree" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.profunctors)
            (hsPkgs.HUnit)
          ] ++ pkgs.lib.optional (flags.dump-core) (hsPkgs.dump-core);
        };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "examples-doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "generic-lens-bench" = {
          depends = [
            (hsPkgs.generic-lens)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }