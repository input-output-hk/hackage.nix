{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      useextensions = true;
    };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "reactive-banana";
        version = "0.7.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus quantentunnel de>";
      author = "Heinrich Apfelmus";
      homepage = "http://haskell.org/haskellwiki/Reactive-banana";
      url = "";
      synopsis = "Practical library for functional reactive programming (FRP).";
      description = "Reactive-banana is a practical library for Functional Reactive Programming (FRP).\n\nFRP offers an elegant and concise way to express interactive programs such as graphical user interfaces, animations, computer music or robot controllers. Thus, the reactive-banana library promises to avoid the spaghetti code commonly used in traditional GUI technologies.\n\nSee the project homepage <http://haskell.org/haskellwiki/Reactive-banana>\nfor a more detailed introduction and features.\n\nStability forecast:\nNo semantic bugs expected.\nSignificant API changes are likely in future versions,\nthough the main interface is beginning to stabilize.\nThe @Reactive.Banana.Switch@ module is quite experimental.\nThere is currently /no/ garbage collection for dynamically created events.";
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
          ];
        };
      };
    };
  }