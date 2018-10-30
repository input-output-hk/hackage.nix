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
      specVersion = "0";
      identifier = {
        name = "HGL";
        version = "3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<libraries@haskell.org>";
      author = "Alastair Reid";
      homepage = "";
      url = "";
      synopsis = "A simple graphics library based on X11 or Win32";
      description = "A simple graphics library, designed to give the programmer access\nto most interesting parts of the Win32 Graphics Device Interface\nand X11 library without exposing the programmer to the pain and\nanguish usually associated with using these interfaces.\n\nThe library also includes a module Graphics.SOE providing the\ninterface used in \"The Haskell School of Expression\", by Paul\nHudak, cf <http://www.haskell.org/soe/>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
        ];
      };
    };
  }