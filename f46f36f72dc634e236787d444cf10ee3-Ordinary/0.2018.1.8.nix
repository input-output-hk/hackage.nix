{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Ordinary";
        version = "0.2018.1.8";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marisa Kirisame";
      maintainer = "lolisa@marisa.moe";
      author = "Marisa Kirisame";
      homepage = "https://github.com/MarisaKirisame/Ordinary#readme";
      url = "";
      synopsis = "A Programming Language in Construction";
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