{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "timeutils"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Jonathan Lamothe";
      maintainer = "jlamothe1980@gmail.com";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/timeutils#readme";
      url = "";
      synopsis = "Time utilities";
      description = "Please see the README on GitHub at <https://github.com/jlamothe/timeutils#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.microlens) (hsPkgs.time) ];
        };
      exes = {
        "timeutils" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.microlens)
            (hsPkgs.time)
            (hsPkgs.timeutils)
            (hsPkgs.vty)
            ];
          };
        };
      tests = {
        "timeutils-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.microlens)
            (hsPkgs.time)
            (hsPkgs.timeutils)
            ];
          };
        };
      };
    }