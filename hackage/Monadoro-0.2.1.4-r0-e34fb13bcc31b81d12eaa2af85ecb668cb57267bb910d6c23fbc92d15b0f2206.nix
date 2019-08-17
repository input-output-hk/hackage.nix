{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "Monadoro"; version = "0.2.1.4"; };
      license = "MIT";
      copyright = "2018-2019 Patryk Kocielnik";
      maintainer = "patryk@kocielnik.pl";
      author = "Patryk Kocielnik";
      homepage = "";
      url = "";
      synopsis = "A minimalistic CLI Pomodoro timer.";
      description = "A Pomodoro timer with two modes: single-pomodoro (default), and four-pomodoro (`--session`).";
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
            (hsPkgs.doctest)
            (hsPkgs.time)
            ];
          };
        };
      };
    }