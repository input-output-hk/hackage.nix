{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { backups = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "clckwrks-dot-com"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "clckwrks.com";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "clckwrks-dot-com-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.clckwrks)
            (hsPkgs.clckwrks-theme-clckwrks)
            (hsPkgs.clckwrks-plugin-bugs)
            (hsPkgs.clckwrks-plugin-media)
            (hsPkgs.clckwrks-plugin-page)
            (hsPkgs.containers)
            (hsPkgs.happstack-server)
            (hsPkgs.hsp)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.web-plugins)
            ];
          };
        "clckwrks-dot-com-backups" = {
          depends = (pkgs.lib).optionals (flags.backups) [
            (hsPkgs.archive)
            (hsPkgs.base)
            (hsPkgs.Extra)
            ];
          };
        };
      };
    }