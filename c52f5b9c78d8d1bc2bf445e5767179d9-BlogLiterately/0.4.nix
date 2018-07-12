{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "BlogLiterately";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) Robert Greayer 2008-2010, Brent Yorgey 2012";
        maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
        author = "Robert Greayer <robgreayer@yahoo.com>";
        homepage = "http://byorgey.wordpress.com/blogliterately/";
        url = "";
        synopsis = "A tool for posting Haskelly articles to blogs";
        description = "Write blog posts in Markdown format, then use BlogLiterately\nto do syntax highlighting, format ghci sessions, and upload\nto any blog supporting the metaWeblog API (such as Wordpress).\n\nSee <http://byorgey.wordpress.com/blogliterately/> for complete\ndocumentation.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "BlogLiterately" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.transformers
              hsPkgs.parsec
              hsPkgs.HaXml
              hsPkgs.utf8-string
              hsPkgs.hscolour
              hsPkgs.blaze-html
              hsPkgs.cmdargs
              hsPkgs.haxr
              hsPkgs.pandoc
            ];
          };
        };
      };
    }