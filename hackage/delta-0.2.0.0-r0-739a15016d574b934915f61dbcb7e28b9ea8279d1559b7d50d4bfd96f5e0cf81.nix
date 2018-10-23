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
        version = "0.2.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "christof.schramm@campus.lmu.de";
      author = "Christof Schramm";
      homepage = "https://github.com/kryoxide/delta";
      url = "";
      synopsis = "A library for detecting file changes";
      description = "Delta is a library for detecting file changes in any given\ndirectory. The package is written using the sodium FRP library\nbut it also provides a callback based API.\nThe project also contains an executable, delta-cli which\nruns on the command line and prints detected changes to stdout.";
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
        ] ++ pkgs.lib.optional (system.isOsx) (hsPkgs.hfsevents);
      };
      exes = {
        "delta-cli" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.delta)
          ];
        };
      };
    };
  }