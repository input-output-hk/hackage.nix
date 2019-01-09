{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "memoization-utils"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "http://github.com/yamadapc/haskell-memoization-utils";
      url = "";
      synopsis = "Utilities for memoizing functions";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lrucache)
          (hsPkgs.time)
          (hsPkgs.time-units)
          ];
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.time-units)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.memoization-utils)
            ];
          };
        };
      };
    }