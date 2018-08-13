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
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) David Turner 2014";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://bitbucket.org/davecturner/alarmclock";
      url = "";
      synopsis = "Wake up and perform an action at a certain time.";
      description = "Wake up and perform an action at a certain time.";
      buildType = "Simple";
    };
    components = {
      "alarmclock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.alarmclock)
            (hsPkgs.time)
          ];
        };
      };
    };
  }