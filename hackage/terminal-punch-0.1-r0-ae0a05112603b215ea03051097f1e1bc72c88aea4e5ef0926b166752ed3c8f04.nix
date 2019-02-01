{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "terminal-punch"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/terminal-punch";
      url = "";
      synopsis = "Simple terminal-based time tracker";
      description = "@terminal-punch@ is a convenient time tracker for the\nterminal.\n\nFor more information, see the\n<https://github.com/emilaxelsson/trackit/blob/master/README.md README>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "punch" = {
          depends = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) (hsPkgs.time) ];
          };
        };
      };
    }