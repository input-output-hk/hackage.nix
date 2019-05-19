{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { forceconsole = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tinyfiledialogs"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 - 2017 Guillaume Vareille, Michael Tolly";
      maintainer = "miketolly@gmail.com";
      author = "Guillaume Vareille, Don Heyse, Paul Rouget, Michael Tolly";
      homepage = "https://github.com/mtolly/tinyfiledialogs";
      url = "";
      synopsis = "Wrapper around the 'tiny file dialogs' C library";
      description = "<https://sourceforge.net/projects/tinyfiledialogs/ tiny file dialogs>\nis a single self-contained C library that provides a powerful set of\ncross-platform dialog boxes providing the following functions:\n\n* beep\n\n* notify popup\n\n* message & question\n\n* input & password\n\n* save file\n\n* open file(s)\n\n* select folder\n\n* color picker\n\nThis package bundles the C library (currently v3.3.1)\nand provides a complete Haskell interface.\nProper Unicode support has been tested on Windows, Mac and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.bytestring);
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."comdlg32")
          (pkgs."ole32")
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      };
    }