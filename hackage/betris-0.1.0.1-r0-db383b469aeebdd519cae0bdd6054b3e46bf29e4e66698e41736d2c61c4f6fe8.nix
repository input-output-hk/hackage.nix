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
        name = "betris";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/betris#readme";
      url = "";
      synopsis = "Braille friendly horizontal version of tetris";
      description = "Please see the README at <https://github.com/mlang/betris#readme>";
      buildType = "Simple";
    };
    components = {
      "betris" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.vty)
        ];
      };
      exes = {
        "betris" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.betris)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.vty)
          ];
        };
      };
    };
  }