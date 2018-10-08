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
        name = "betris";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/betris#readme";
      url = "";
      synopsis = "A horizontal version of tetris for braille users";
      description = "The game of tetris for braille display users, implemented using unicode braille rotated 90 degrees.  Tetriminos are \"falling\" from right to left.";
      buildType = "Simple";
    };
    components = {
      "betris" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.optparse-applicative)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.time-units)
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
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.time-units)
            (hsPkgs.vty)
          ];
        };
      };
    };
  }