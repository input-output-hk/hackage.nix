{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.1.4";
      identifier = {
        name = "terminfo";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Judah Jacobson";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "Judah Jacobson";
      homepage = "http://code.haskell.org/terminfo";
      url = "";
      synopsis = "Haskell bindings to the terminfo library.";
      description = "This library provides an interface to the terminfo database (via bindings to the\ncurses library).  Terminfo allows programs to interact with a variety of terminals\nusing a standard set of capabilities.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."curses") ];
      };
    };
  }