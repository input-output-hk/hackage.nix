{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pid1";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Michael Snoyman";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/pid1#readme";
      url = "";
      synopsis = "Do signal handling and orphan reaping for Unix PID1 init processes";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "pid1" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.unix)
        ];
      };
      exes = {
        "pid1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pid1)
          ];
        };
      };
    };
  }