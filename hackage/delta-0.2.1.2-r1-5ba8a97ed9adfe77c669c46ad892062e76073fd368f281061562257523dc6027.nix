{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build_fs_events = true; };
    package = {
      specVersion = "1.16";
      identifier = { name = "delta"; version = "0.2.1.2"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "christof.schramm@campus.lmu.de";
      author = "Christof Schramm";
      homepage = "https://github.com/kryoxide/delta";
      url = "";
      synopsis = "A library for detecting file changes";
      description = "Delta is a library for detecting file changes in any given\ndirectory. The package is written using the sodium FRP library\nbut it also provides a callback based API.\n\nFile changes on OS X are based on the @FSEvents@ API that is also\nused by TimeMachine. On other operating systems the library\ncurrently uses recursive descents in directories. I will include\n@inotify@ for Linux. If someone would like to have a non-polling\nbased API for windows or BSD, I would really like it if anyone\nwould contribute.\n\nThe project also contains an executable, delta-run, which\nallows you to run arbitrary shell commands when a file in a\ndirectory (recursively) changes.\n\n@\n\$> delta-run --help\nUsage: delta-run [-i|--interval INTERVAL] [-v|--verbose] FILE CMD\nAvailable options:\n-h,--help                Show this help text\n-i,--interval INTERVAL   Run at most every n seconds\n-v,--verbose             Print extra output\nFILE                     The directory that is watched\nCMD                      The command to run\n@\n\nFor example you could use @delta-run@ to rebuild your project\neverytime the source changes like this:\n@\ndelta-run ./src \\\"cabal build\\\"\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."sodium" or ((hsPkgs.pkgs-errors).buildDepError "sodium"))
          ] ++ (pkgs.lib).optional (system.isOsx && flags.build_fs_events) (hsPkgs."hfsevents" or ((hsPkgs.pkgs-errors).buildDepError "hfsevents"));
        buildable = true;
        };
      exes = {
        "delta-cli" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."delta" or ((hsPkgs.pkgs-errors).buildDepError "delta"))
            ];
          buildable = true;
          };
        "delta-run" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."delta" or ((hsPkgs.pkgs-errors).buildDepError "delta"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."sodium" or ((hsPkgs.pkgs-errors).buildDepError "sodium"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."delta" or ((hsPkgs.pkgs-errors).buildDepError "delta"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }