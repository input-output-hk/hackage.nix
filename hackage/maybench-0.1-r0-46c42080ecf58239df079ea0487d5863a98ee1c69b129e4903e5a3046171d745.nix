{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "maybench";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<maybench-devel@googlegroups.com>";
      author = "Maybench developers";
      homepage = "http://code.google.com/p/maybench/";
      url = "";
      synopsis = "Automated benchmarking tool";
      description = "Maybench is a tool for comparing the performance\nbetween two versions of the same program, on a\nseries of benchmarks that you design.\n\nMaybench aims to be easy to use, almost as easy\nas running \"time your-program arg1..arg2\". Ideally,\nit should be a simple matter for outsiders to write\ntiming tests for your programming project and contribute\nthem as part of your performance testing suite.\n\nThe Darcs repository is available at <http://code.haskell.org/maybench>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.old-time)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.mtl)
          ];
      };
      exes = {
        "maybench" = {
          depends  = if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.process)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.time)
              (hsPkgs.mtl)
            ];
        };
        "darcs-benchmark" = {
          depends  = if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.process)
              (hsPkgs.unix)
              (hsPkgs.directory)
              (hsPkgs.time)
              (hsPkgs.mtl)
              (hsPkgs.filepath)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.unix)
              (hsPkgs.time)
              (hsPkgs.mtl)
            ];
        };
      };
    };
  }