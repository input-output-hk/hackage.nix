{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { win32-2-5 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mintty"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/mintty";
      url = "";
      synopsis = "A reliable way to detect the presence of a MinTTY console on Windows";
      description = "MinTTY is a Windows-specific terminal emulator for the\nwidely used Cygwin and MSYS projects, which provide\nUnix-like environments for Windows. MinTTY consoles behave\ndifferently from native Windows consoles (such as\n@cmd.exe@ or PowerShell) in many ways, and in some cases,\nthese differences make it necessary to treat MinTTY\nconsoles differently in code.\n\nThe @mintty@ library provides a simple way to detect if\nyour code in running in a MinTTY console on Windows. It\nexports @isMinTTY@, which does the right thing 90% of the\ntime (by checking if standard error is attached to\nMinTTY), and it also exports @isMinTTYHandle@ for the\nother 10% of the time (when you want to check is some\narbitrary handle is attached to MinTTY). As you might\nexpect, both of these functions will simply return @False@\non any non-Windows operating system.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          ] ++ (pkgs.lib).optionals (system.isWindows) (if flags.win32-2-5
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.filepath) (hsPkgs.Win32) ]);
        build-tools = (pkgs.lib).optionals (system.isWindows) ((pkgs.lib).optional (!flags.win32-2-5) ((hsPkgs.buildPackages).hsc2hs));
        };
      };
    }