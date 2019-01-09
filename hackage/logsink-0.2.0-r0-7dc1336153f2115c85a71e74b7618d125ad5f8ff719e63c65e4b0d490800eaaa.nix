{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "logsink"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) Zalora South East Asia Pte. Ltd";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "https://github.com/sol/logsink#readme";
      url = "";
      synopsis = "A logging framework for Haskell";
      description = "@logsink@ is a logging framework for Haskell.  It is meant to be used in\nconjunction with @logging-facade@ (<http://hackage.haskell.org/package/logging-facade>).\n\nFor more information and usage, consult the README: <https://github.com/sol/logsink#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.logging-facade)
          (hsPkgs.hsyslog)
          (hsPkgs.time)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-facade)
            (hsPkgs.hsyslog)
            (hsPkgs.time)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }