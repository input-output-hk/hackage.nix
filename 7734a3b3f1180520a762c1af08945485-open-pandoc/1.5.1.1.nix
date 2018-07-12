{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      highlighting = false;
      executable = true;
      wrappers = true;
      library = true;
      citeproc = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "open-pandoc";
          version = "1.5.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2006-2010 John MacFarlane";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "John MacFarlane <jgm@berkeley.edu>";
        homepage = "http://johnmacfarlane.net/pandoc";
        url = "";
        synopsis = "Conversion between markup formats";
        description = "OpenPandoc is a variant of Pandoc that supports version 3.0\nor later of the parser combinator library Parsec. In all\nother aspects, the code is unchanged from the original\nversion. A separate package is necessary, unfortunately, as\nthe original author of Pandoc refuses to support current\nversions of Parsec, because he thinks that they are too\nslow. It is true that Parsec 3.x is somewhat less\nperformant than the 2.x branch used to be, so if you intend\nto use Pandoc for formatting huge amounts of data on a\nregular basis, it might be worthwile to build it with\nParsec 2. For everyone else, however, the difference in\nspeed is hardly noticable. Using Parsec 3 is much more\nconvenient, though, because -- unlike the old version --\nthat package is oftentimes available through your system's\npacket manager, i.e. in ArchLinux.\n\nGenerally speaking, Pandoc is a Haskell library for\nconverting from one markup format to another, and a\ncommand-line tool that uses this library. It can read\nmarkdown and (subsets of) reStructuredText, HTML, and\nLaTeX, and it can write markdown, reStructuredText, HTML,\nLaTeX, ConTeXt, Docbook, OpenDocument, ODT, RTF, MediaWiki,\ngroff man pages, and S5 HTML slide shows.\n\nPandoc extends standard markdown syntax with footnotes,\nembedded LaTeX, definition lists, tables, and other\nfeatures. A compatibility mode is provided for those\nwho need a drop-in replacement for Markdown.pl.\n\nIn contrast to existing tools for converting markdown\nto HTML, which use regex substitutions, pandoc has\na modular design: it consists of a set of readers,\nwhich parse text in a given format and produce a native\nrepresentation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
        buildType = "Custom";
      };
      components = {
        "open-pandoc" = {
          depends  = (([
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.xhtml
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.zip-archive
            hsPkgs.utf8-string
            hsPkgs.old-time
            hsPkgs.HTTP
            hsPkgs.texmath
            hsPkgs.xml
            hsPkgs.extensible-exceptions
          ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
            then [ hsPkgs.base hsPkgs.syb ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional _flags.highlighting hsPkgs.highlighting-kate) ++ pkgs.lib.optional _flags.citeproc hsPkgs.citeproc-hs;
        };
        exes = {
          "pandoc" = {
            depends  = pkgs.lib.optional _flags.citeproc hsPkgs.citeproc-hs;
          };
          "markdown2pdf" = {};
        };
      };
    }