{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HGL"; version = "3.2.3.1"; };
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
      "library" = {
        depends = (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."X11" or (errorHandler.buildDepError "X11")) ]);
        buildable = true;
        };
      };
    }