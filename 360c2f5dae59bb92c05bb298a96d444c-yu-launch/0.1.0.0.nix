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
        name = "yu-launch";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Johann Lee";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "The launcher for Yu.";
      description = "The launcher for Yu.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yu-launch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yu-utils)
            (hsPkgs.yu-auth)
            (hsPkgs.yu-core)
            (hsPkgs.cmdargs)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }