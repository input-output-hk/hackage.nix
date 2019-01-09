{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "betris"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/betris#readme";
      url = "";
      synopsis = "A horizontal version of tetris for braille users";
      description = "Please see the README at <https://github.com/mlang/betris#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.optparse-applicative)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.time-units)
          (hsPkgs.vty)
          ];
        };
      exes = {
        "betris" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.betris)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.time-units)
            (hsPkgs.vty)
            ];
          };
        };
      };
    }