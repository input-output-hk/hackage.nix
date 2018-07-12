{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "download-media-content";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "http://github.com/jaspervdj/download-media-content";
        url = "";
        synopsis = "Simple tool to download images from RSS feeds (e.g. Flickr, Picasa)";
        description = "This package provides a very simple tool to download images from RSS feeds\n(e.g. the kind that Flickr and Picasa provide).\n\nExample usage:\n\n> download-media-content <some RSS feed or local filename>\n\nThe tool will download the @media:content@ images found in the RSS feed (it\nalso supports some other formats) and place them in the current directory,\nnaming them @01.extension@, @02.extension@, etc.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "download-media-content" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tagsoup
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.http-enumerator
              hsPkgs.filepath
            ];
          };
        };
      };
    }