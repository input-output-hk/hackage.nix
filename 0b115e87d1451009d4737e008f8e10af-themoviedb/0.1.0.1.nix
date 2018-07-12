{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "themoviedb";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2012 Peter Jones <pjones@pmade.com>";
        maintainer = "Peter Jones <pjones@pmade.com>";
        author = "Peter Jones <pjones@pmade.com>";
        homepage = "http://github.com/pjones/themoviedb";
        url = "";
        synopsis = "Haskell API bindings for http://themoviedb.org";
        description = "This library provides functions for retrieving metadata\nfrom the <http://TheMovieDB.org> API.  Documentation\ncan be found in the \"Network.API.TheMovieDB\" module.";
        buildType = "Simple";
      };
      components = {
        "themoviedb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.unix
          ];
        };
        exes = {
          "tmdb" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.bytestring
              hsPkgs.HUnit
            ];
          };
        };
      };
    }