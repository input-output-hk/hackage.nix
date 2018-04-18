{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "skemmtun";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jocelyn.Meyron@grenoble-inp.org";
        author = "Jocelyn MEYRON";
        homepage = "https://github.com/nyorem/skemmtun";
        url = "";
        synopsis = "A MyAnimeList.net client.";
        description = "Contains most of the typical commands for listing/updating\nyour anime/manga list on MyAnimeList.net.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mal = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.time
              hsPkgs.wreq
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }