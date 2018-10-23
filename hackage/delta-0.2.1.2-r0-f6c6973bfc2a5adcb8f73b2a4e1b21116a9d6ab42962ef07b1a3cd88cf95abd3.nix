{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      build_fs_events = true;
    };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "delta";
        version = "0.2.1.2";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "christof.schramm@campus.lmu.de";
      author = "Christof Schramm";
      homepage = "https://github.com/kryoxide/delta";
      url = "";
      synopsis = "A library for detecting file changes";
      description = "Delta is a library for detecting file changes in any given\ndirectory. The package is written using the sodium FRP library\nbut it also provides a callback based API.\n\nFile changes on OS X are based on the @FSEvents@ API that is also\nused by TimeMachine. On other operating systems the library\ncurrently uses recursive descents in directories. I will include\n@inotify@ for Linux. If someone would like to have a non-polling\nbased API for windows or BSD, I would really like it if anyone\nwould contribute.\n\nThe project also contains an executable, delta-run, which\nallows you to run arbitrary shell commands when a file in a\ndirectory (recursively) changes.\n\n@\n\$> delta-run --help\nUsage: delta-run [-i|--interval INTERVAL] [-v|--verbose] FILE CMD\nAvailable options:\n-h,--help                Show this help text\n-i,--interval INTERVAL   Run at most every n seconds\n-v,--verbose             Print extra output\nFILE                     The directory that is watched\nCMD                      The command to run\n@\n\nFor example you could use @delta-run@ to rebuild your project\neverytime the source changes like this:\n@\ndelta-run ./src \"cabal build\"\n@";
      buildType = "Simple";
    };
    components = {
      "delta" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.sodium)
        ] ++ pkgs.lib.optional (system.isOsx && flags.build_fs_events) (hsPkgs.hfsevents);
      };
      exes = {
        "delta-cli" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.delta)
          ];
        };
        "delta-run" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.delta)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.sodium)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.delta)
            (hsPkgs.hspec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }