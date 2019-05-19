{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.23";
      identifier = { name = "animascii"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2018 Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://127.0.0.1:8000/static/articles/animascii/page.html";
      url = "";
      synopsis = "text-file based ASCII animator";
      description = "Text-file based ASCII animator. Make sure to check the\nREADME before installing!";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        ];
      };
    components = {
      exes = {
        "animascii" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-terminal-game)
            (hsPkgs.fsnotify)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.config-ini)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.temporary)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.ansi-terminal-game)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }