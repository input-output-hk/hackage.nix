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
        name = "HappyTree";
        version = "0.2018.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marisa Kirisame";
      maintainer = "lolisa@marisa.moe";
      author = "Marisa Kirisame";
      homepage = "https://github.com/MarisaKirisame/HappyTree#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/MarisaKirisame/HappyTree#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.generics-sop)
          (hsPkgs.singletons)
        ];
      };
      exes = {
        "HappyTree-exe" = {
          depends = [
            (hsPkgs.HappyTree)
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.generics-sop)
            (hsPkgs.singletons)
          ];
        };
      };
      tests = {
        "HappyTree-test" = {
          depends = [
            (hsPkgs.HappyTree)
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.generics-sop)
            (hsPkgs.singletons)
          ];
        };
      };
    };
  }