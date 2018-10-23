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
        name = "ptr";
        version = "0.15.5";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/ptr";
      url = "";
      synopsis = "Abstractions for operations on pointers";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ptr" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
          (hsPkgs.profunctors)
          (hsPkgs.contravariant)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.bug)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.ptr)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }