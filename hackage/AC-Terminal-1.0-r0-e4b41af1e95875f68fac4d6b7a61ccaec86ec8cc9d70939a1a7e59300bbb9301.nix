{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "AC-Terminal"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Trivial wrapper over ansi-terminal.";
      description = "This trivial package presents a simplified interface to\nthe most excellent @ansi-terminal@ package, exposing only\nthe functionallity that I personally use. It is very\nlimited, but very easy to use.\n\nThis package allows you to manipulate the text output\nterminal (assuming your program has one). Specifically,\nit supports colour changes and title changes (for\nvirtual terminals). Impressively, it (or rather, the\npackage it wraps) works on both Windows and Unix.\nUnder Windows, it uses native Win32 calls, while under\nUnix it uses ANSI escape codes.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ansi-terminal) ]; };
      };
    }