{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "Monadoro"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "2019 Patryk Kocielnik";
      maintainer = "patryk@kocielnik.pl";
      author = "Patryk Kocielnik";
      homepage = "https://github.com/gitlab.com/kocielnik#readme";
      url = "";
      synopsis = "A minimalistic CLI Pomodoro timer, based on a library of the same purpose.";
      description = "README is available at <https://gitlab.com/kocielnik/monadoro#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.ansi-terminal) (hsPkgs.base) (hsPkgs.time) ];
        };
      exes = {
        "monadoro" = {
          depends = [
            (hsPkgs.Monadoro)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.time)
            ];
          };
        };
      tests = {
        "Monadoro-test" = {
          depends = [
            (hsPkgs.Monadoro)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.time)
            ];
          };
        };
      };
    }