{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "alarmclock"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-2019 David Turner";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://github.com/DaveCTurner/alarmclock";
      url = "";
      synopsis = "Wake up and perform an action at a certain time.";
      description = "Please see the README at <https://github.com/DaveCTurner/alarmclock/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
          depends = [
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