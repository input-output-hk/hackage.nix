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
        name = "alarmclock";
        version = "0.6.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2018 David Turner";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://bitbucket.org/davecturner/alarmclock";
      url = "";
      synopsis = "Wake up and perform an action at a certain time.";
      description = "Please see the README on Bitbucket at <https://bitbucket.org/davecturner/alarmclock#readme>";
      buildType = "Simple";
    };
    components = {
      "alarmclock" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.clock)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.unbounded-delays)
        ];
      };
      tests = {
        "alarmclock-test" = {
          depends  = [
            (hsPkgs.alarmclock)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.clock)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.unbounded-delays)
          ];
        };
      };
    };
  }