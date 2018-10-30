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
        name = "monad-parallel-progressbar";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Mitsuhiro Nakamura";
      maintainer = "Mitsuhiro Nakamura <m.nacamura@gmail.com>";
      author = "Mitsuhiro Nakamura";
      homepage = "https://github.com/mnacamura/monad-parallel-progressbar";
      url = "";
      synopsis = "Parallel execution of monadic computations with a progress bar";
      description = "This library attaches a progress bar to a subset of\nfunctions in \"Control.Monad.Parallel\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-parallel)
          (hsPkgs.monadIO)
          (hsPkgs.terminal-progress-bar)
        ];
      };
    };
  }