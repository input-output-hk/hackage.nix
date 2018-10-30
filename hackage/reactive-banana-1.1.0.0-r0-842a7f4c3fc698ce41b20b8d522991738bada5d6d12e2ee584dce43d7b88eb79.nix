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
      specVersion = "1.18";
      identifier = {
        name = "reactive-banana";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://wiki.haskell.org/Reactive-banana";
      url = "";
      synopsis = "Library for functional reactive programming (FRP).";
      description = "Reactive-banana is a library for Functional Reactive Programming (FRP).\n\nFRP offers an elegant and concise way to express interactive programs such as graphical user interfaces, animations, computer music or robot controllers. It promises to avoid the spaghetti code that is all too common in traditional approaches to GUI programming.\n\nSee the project homepage <http://wiki.haskell.org/Reactive-banana>\nfor more detailed documentation and examples.\n\n/Stability forecast./\nThis is a stable library, though minor API changes are still likely.\nIt features an efficient, push-driven implementation\nand has seen some optimization work.\n\n/API guide./\nStart with the \"Reactive.Banana\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.vault)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.pqueue)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.reactive-banana)
            (hsPkgs.vault)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.hashable)
            (hsPkgs.psqueues)
            (hsPkgs.pqueue)
          ];
        };
      };
    };
  }