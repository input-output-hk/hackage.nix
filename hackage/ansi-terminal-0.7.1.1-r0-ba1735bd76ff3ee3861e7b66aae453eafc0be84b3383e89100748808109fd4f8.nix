{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "ansi-terminal"; version = "0.7.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Max Bolingbroke";
      homepage = "https://github.com/feuerbach/ansi-terminal";
      url = "";
      synopsis = "Simple ANSI terminal support, with Windows compatibility";
      description = "ANSI terminal support for Haskell: allows cursor movement,\nscreen clearing, color output, showing or hiding the\ncursor, and changing the title. Works on UNIX and Windows.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.colour)
          ] ++ (pkgs.lib).optionals (system.isWindows) [
          (hsPkgs.base-compat)
          (hsPkgs.containers)
          (hsPkgs.Win32)
          (hsPkgs.process)
          ];
        };
      exes = {
        "ansi-terminal-example" = {
          depends = [
            (hsPkgs.base)
            ] ++ (pkgs.lib).optionals (system.isWindows) [
            (hsPkgs.base-compat)
            (hsPkgs.containers)
            (hsPkgs.Win32)
            ];
          };
        };
      };
    }