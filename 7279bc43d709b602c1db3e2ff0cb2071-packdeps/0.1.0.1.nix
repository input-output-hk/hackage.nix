{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      web = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "packdeps";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://packdeps.haskellers.com/";
        url = "";
        synopsis = "Check your cabal packages for lagging dependencies.";
        description = "This provides a library and command line tool for checking if the upper bounds in your package's dependency list excludes the newest package available. The code was originally available only as a web interface at <http://packdeps.haskellers.com/>, but is now available for standalone use as well.\n\nThe command line tool has an incredibly simple interface: simply pass it a list of cabal files, and it will tell you what dependencies- if any- are restricted.";
        buildType = "Simple";
      };
      components = {
        packdeps = {
          depends  = [
            hsPkgs.base
            hsPkgs.tar
            hsPkgs.split
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.Cabal
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          packdeps = {
            depends  = pkgs.lib.optionals (!_flags.web) [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.packdeps
            ];
          };
          packdeps-yesod = {
            depends  = pkgs.lib.optionals _flags.web [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.Cabal
              hsPkgs.time
              hsPkgs.packdeps
              hsPkgs.hamlet
              hsPkgs.yesod-newsfeed
              hsPkgs.yesod
            ];
          };
        };
      };
    }