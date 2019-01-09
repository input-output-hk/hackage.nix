{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "co-log-sys"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "2018 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell";
      homepage = "https://github.com/serokell/co-log-sys#readme";
      url = "";
      synopsis = "Syslog implementation on top of 'co-log-core'";
      description = "Please see the README on GitHub at <https://github.com/serokell/co-log-sys#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base-noprelude)
          (hsPkgs.co-log-core)
          (hsPkgs.fmt)
          (hsPkgs.loot-prelude)
          (hsPkgs.microlens)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.universum)
          (hsPkgs.unix)
          ];
        };
      tests = {
        "co-log-sys-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base-noprelude)
            (hsPkgs.co-log-core)
            (hsPkgs.co-log-sys)
            (hsPkgs.fmt)
            (hsPkgs.loot-prelude)
            (hsPkgs.microlens)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.universum)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }