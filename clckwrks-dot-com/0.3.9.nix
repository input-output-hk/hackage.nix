{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      backups = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clckwrks-dot-com";
          version = "0.3.9";
        };
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
          clckwrks-dot-com-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.clckwrks
              hsPkgs.clckwrks-theme-clckwrks
              hsPkgs.clckwrks-plugin-bugs
              hsPkgs.clckwrks-plugin-media
              hsPkgs.clckwrks-plugin-page
              hsPkgs.containers
              hsPkgs.happstack-server
              hsPkgs.hsp
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.text
              hsPkgs.web-plugins
            ];
          };
          clckwrks-dot-com-backups = {
            depends  = optionals _flags.backups [
              hsPkgs.archive
              hsPkgs.base
              hsPkgs.Extra
              hsPkgs.network
              hsPkgs.cabal-debian
            ];
          };
        };
      };
    }