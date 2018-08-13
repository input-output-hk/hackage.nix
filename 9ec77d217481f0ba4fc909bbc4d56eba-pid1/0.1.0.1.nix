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
        name = "pid1";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2016 Michael Snoyman";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/pid1#readme";
      url = "";
      synopsis = "Do signal handling and orphan reaping for Unix PID1 init processes";
      description = "Please see README.md or view Haddocks at <https://www.stackage.org/package/pid1>";
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