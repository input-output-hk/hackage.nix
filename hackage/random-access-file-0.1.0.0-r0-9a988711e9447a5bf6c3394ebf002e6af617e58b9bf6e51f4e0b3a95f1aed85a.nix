{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "random-access-file"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "https://github.com/portnov/random-access-file#readme";
      url = "";
      synopsis = "Random file access methods, supporting application-level page cache.";
      description = "Please see the README on GitHub at <https://github.com/portnov/random-access-file#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.lrucaching)
          (hsPkgs.stm)
          (hsPkgs.unix)
          (hsPkgs.unix-bytestring)
          (hsPkgs.unix-memory)
          ];
        };
      benchmarks = {
        "random-access-file-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.concurrent-extra)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.lrucaching)
            (hsPkgs.mwc-random)
            (hsPkgs.random)
            (hsPkgs.random-access-file)
            (hsPkgs.stm)
            (hsPkgs.unix)
            (hsPkgs.unix-bytestring)
            (hsPkgs.unix-memory)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }