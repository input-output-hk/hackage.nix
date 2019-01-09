{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snake"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ha.alamin@gmail.com";
      author = "Habib Alamin";
      homepage = "http://code.alaminium.me/habibalamin/snake";
      url = "";
      synopsis = "A basic console snake game.";
      description = "A basic console snake game with rudimentary ASCII-based graphics and minimal dependencies.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "snake" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.terminal-size)
            (hsPkgs.split)
            (hsPkgs.random)
            ];
          };
        };
      };
    }