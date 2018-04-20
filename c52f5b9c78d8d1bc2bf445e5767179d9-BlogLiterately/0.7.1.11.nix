{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "BlogLiterately";
          version = "0.7.1.11";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) Robert Greayer 2008-2010, Brent Yorgey 2012-2013";
        maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
        author = "Robert Greayer <robgreayer@yahoo.com>";
        homepage = "http://byorgey.wordpress.com/blogliterately/";
        url = "";
        synopsis = "A tool for posting Haskelly articles to blogs";
        description = "Write blog posts in Markdown format, then use BlogLiterately\nto do syntax highlighting, format ghci sessions, and upload\nto any blog supporting the metaWeblog API (such as Wordpress):\n<http://codex.wordpress.org/XML-RPC_MetaWeblog_API>.\n\nTo get started, use the provided executable\n@BlogLiterately@; see\n<http://byorgey.wordpress.com/blogliterately/> for\ncomplete documentation.\n\nTo make further customization possible, the internals\nof the executable are made available as a library.  In\nparticular, it is easy to create your own executable\nwhich adds extra custom transformations; see\n\"Text.BlogLiterately.Run\".";
        buildType = "Simple";
      };
      components = {
        BlogLiterately = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.bool-extras
            hsPkgs.mtl
            hsPkgs.temporary
            hsPkgs.strict
            hsPkgs.split
            hsPkgs.transformers
            hsPkgs.parsec
            hsPkgs.HaXml
            hsPkgs.hscolour
            hsPkgs.blaze-html
            hsPkgs.cmdargs
            hsPkgs.haxr
            hsPkgs.pandoc
            hsPkgs.pandoc-types
            hsPkgs.pandoc-citeproc
            hsPkgs.highlighting-kate
            hsPkgs.data-default
            hsPkgs.lens
          ];
        };
        exes = {
          BlogLiterately = {
            depends  = [
              hsPkgs.base
              hsPkgs.BlogLiterately
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }