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
        name = "Ordinary";
        version = "0.2018.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marisa Kirisame";
      maintainer = "lolisa@marisa.moe";
      author = "Marisa Kirisame";
      homepage = "https://github.com/MarisaKirisame/Ordinary#readme";
      url = "";
      synopsis = "Short description of your package";
      description = "Please see the README on Github at <https://github.com/MarisaKirisame/Ordinary#readme>";
      buildType = "Simple";
    };
    components = {
      "Ordinary" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.threepenny-gui)
        ];
      };
      exes = {
        "Ordinary-exe" = {
          depends  = [
            (hsPkgs.Ordinary)
            (hsPkgs.base)
            (hsPkgs.safe)
            (hsPkgs.threepenny-gui)
          ];
        };
      };
      tests = {
        "Ordinary-test" = {
          depends  = [
            (hsPkgs.Ordinary)
            (hsPkgs.base)
            (hsPkgs.safe)
            (hsPkgs.threepenny-gui)
          ];
        };
      };
    };
  }