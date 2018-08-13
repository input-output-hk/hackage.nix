{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "HGL";
        version = "3.2.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christoph Lueth <christoph.lueth@dfki.de>, Alan Hawkins <hawk.alan@gmail.com>";
      author = "Alastair Reid";
      homepage = "";
      url = "";
      synopsis = "A simple graphics library based on X11 or Win32";
      description = "A simple graphics library, designed to give the programmer access\nto most interesting parts of the Win32 Graphics Device Interface\nand X11 library without exposing the programmer to the pain and\nanguish usually associated with using these interfaces.\n\nThe library also includes a module Graphics.SOE providing the\ninterface used in \"The Haskell School of Expression\", by Paul\nHudak, cf <http://www.haskell.org/soe/>.";
      buildType = "Simple";
    };
    components = {
      "HGL" = {
        depends  = (if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
          ]) ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.X11) ]);
      };
    };
  }