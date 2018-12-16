{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      visual-tests = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "prednote";
        version = "0.32.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013-2015 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/prednote";
      url = "";
      synopsis = "Evaluate and display trees of predicates";
      description = "Build and evaluate trees of predicates. For example, you might build\na predicate of the type Int -> Bool. You do this by assembling\nseveral predicates into a tree. You can then verbosely evaluate\nthis tree, showing why a particular result is reached.\n\nprednote also provides modules to test several subjects against a\ngiven predicate, and to parse infix or RPN expressions into a tree of\npredicates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.rainbow)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "prednote-visual-tests" = {
          depends = pkgs.lib.optionals (flags.visual-tests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.quickpull)
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "prednote-tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.quickpull)
            (hsPkgs.base)
            (hsPkgs.rainbow)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }