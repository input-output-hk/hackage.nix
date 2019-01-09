{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "terminal-text"; version = "1.1.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/terminal-text";
      url = "";
      synopsis = "Text data type for styled terminal output, including all standard ANSI effects (bold, italic, blinking) and ANSI / 256 / truecolor colors support for Unix and Windows (whenever possible).";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.container)
          (hsPkgs.layered-state)
          (hsPkgs.prologue)
          (hsPkgs.text)
          ];
        };
      };
    }