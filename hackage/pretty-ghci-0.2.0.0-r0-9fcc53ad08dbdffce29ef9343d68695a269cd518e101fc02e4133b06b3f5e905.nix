{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "pretty-ghci"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alec Theriault";
      maintainer = "alec.theriault@gmail.com";
      author = "Alec Theriault";
      homepage = "";
      url = "";
      synopsis = "Functionality for beautifying GHCi";
      description = "Provides a library and an executable for parsing and pretty-printing the\noutput of derived @Show@ instances as well as Haddock docstrings. The idea is\nto provide functionality that can be easily plugged into GHCi's\n@-interactive-print@ option, making for a better REPL experience.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haddock-library)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.prettyprinter)
          (hsPkgs.text)
          (hsPkgs.array)
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.Win32);
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      exes = {
        "pp-ghci" = { depends = [ (hsPkgs.base) (hsPkgs.pretty-ghci) ]; };
        };
      tests = {
        "haddock-test" = {
          depends = [
            (hsPkgs.pretty-ghci)
            (hsPkgs.base)
            (hsPkgs.prettyprinter)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            ];
          };
        "show-test" = {
          depends = [
            (hsPkgs.pretty-ghci)
            (hsPkgs.base)
            (hsPkgs.prettyprinter)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            ];
          };
        };
      };
    }