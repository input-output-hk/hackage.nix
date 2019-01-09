{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sentry"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "noteed@gmail.com";
      author = "Vo Minh Thu";
      homepage = "https://github.com/noteed/sentry";
      url = "";
      synopsis = "Process monitoring tool written and configured in Haskell";
      description = "Sentry is a process monitoring tool written and configured in Haskell. Its\naim is to keep running programs. For each configured program, multiple\nprocesses can be started. Currently Sentry runs on Linux only.\n\nUnder normal circumstance, the \"Sentry\" module is enough to write\nconfiguration files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cmdargs)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.safecopy)
          (hsPkgs.time)
          (hsPkgs.unix)
          ];
        };
      exes = {
        "sentry" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.sentry)
            (hsPkgs.unix)
            ];
          };
        "sentry-sleep" = { depends = [ (hsPkgs.base) ]; };
        };
      };
    }