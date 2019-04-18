{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "Monadoro"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "2019 Patryk Kocielnik";
      maintainer = "patryk@kocielnik.pl";
      author = "Patryk Kocielnik";
      homepage = "https://github.com/gitlab.com/kocielnik#readme";
      url = "";
      synopsis = "A minimalistic CLI Pomodoro timer, based on a library of the same purpose.";
      description = "Please see the README on GitLab at <https://gitlab.com/kocielnik/monadoro#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.time)
          ];
        };
      exes = {
        "monadoro" = {
          depends = [
            (hsPkgs.Monadoro)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.process)
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
            (hsPkgs.process)
            (hsPkgs.time)
            ];
          };
        };
      };
    }