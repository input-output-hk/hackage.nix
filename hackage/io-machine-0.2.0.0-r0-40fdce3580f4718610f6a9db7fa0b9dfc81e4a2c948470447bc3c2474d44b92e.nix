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
        name = "io-machine";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Yoshikuni Jujo All Rights Reserved";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/io-machine#readme";
      url = "";
      synopsis = "Easy I/O model to learn IO monad";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
      tests = {
        "io-machine-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.io-machine)
          ];
        };
      };
    };
  }