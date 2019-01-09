{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pomodoro"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Al Zohali <zohl@fmap.me>";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "pomodoro timer";
      description = "A simple pomodoro timer. Features: task bar, popup and\nsound notifications, tracking to file, command\nline interface.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pomodoro" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.heredoc)
            (hsPkgs.libnotify)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            ];
          };
        };
      };
    }