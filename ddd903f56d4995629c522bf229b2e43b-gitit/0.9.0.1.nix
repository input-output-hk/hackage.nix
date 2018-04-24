{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      plugins = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gitit";
          version = "0.9.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://gitit.net";
        url = "";
        synopsis = "Wiki using happstack, git or darcs, and pandoc.";
        description = "Gitit is a wiki backed by a git, darcs, or mercurial\nfilestore.  Pages and uploaded files can be modified either\ndirectly via the VCS's command-line tools or through\nthe wiki's web interface. Pandoc is used for markup\nprocessing, so pages may be written in\n(extended) markdown, reStructuredText, LaTeX, HTML,\nor literate Haskell, and exported in ten different\nformats, including LaTeX, ConTeXt, DocBook, RTF,\nOpenOffice ODT, and MediaWiki markup.\n\nNotable features include\n\n* plugins: dynamically loaded page\ntransformations written in Haskell (see\n\"Network.Gitit.Interface\")\n\n* conversion of TeX math to MathML for display in\nweb browsers\n\n* syntax highlighting of source code\nfiles and code snippets\n\n* Atom feeds (site-wide and per-page)\n\n* a library, \"Network.Gitit\", that makes it simple\nto include a gitit wiki in any happstack application\n\nYou can see a running demo at <http://gitit.net>.\n\nFor usage information:  @gitit --help@";
        buildType = "Simple";
      };
      components = {
        gitit = {
          depends  = [
            hsPkgs.base
            hsPkgs.pandoc
            hsPkgs.pandoc-types
            hsPkgs.filepath
            hsPkgs.safe
          ] ++ pkgs.lib.optionals _flags.plugins [
            hsPkgs.ghc
            hsPkgs.ghc-paths
          ];
        };
        exes = {
          gitit = {
            depends  = (([
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.xhtml
              hsPkgs.containers
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.cgi
              hsPkgs.old-time
              hsPkgs.highlighting-kate
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.random
              hsPkgs.network
              hsPkgs.utf8-string
              hsPkgs.SHA
              hsPkgs.HTTP
              hsPkgs.HStringTemplate
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.recaptcha
              hsPkgs.filestore
              hsPkgs.zlib
              hsPkgs.url
              hsPkgs.happstack-server
              hsPkgs.base64-bytestring
              hsPkgs.xml
              hsPkgs.hslogger
              hsPkgs.ConfigFile
              hsPkgs.feed
              hsPkgs.xss-sanitize
              hsPkgs.tagsoup
              hsPkgs.blaze-html
              hsPkgs.json
            ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
              hsPkgs.base
              hsPkgs.syb
            ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.0.3") hsPkgs.network) ++ pkgs.lib.optionals _flags.plugins [
              hsPkgs.ghc
              hsPkgs.ghc-paths
            ];
          };
          expireGititCache = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTTP
              hsPkgs.url
              hsPkgs.filepath
            ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
              hsPkgs.base
              hsPkgs.syb
            ];
          };
        };
      };
    }