{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      static = false;
      embed_data_files = false;
      trypandoc = false;
      network-uri = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pandoc";
        version = "2.1.3";
      };
      license = "GPL-2.0-only";
      copyright = "(c) 2006-2018 John MacFarlane";
      maintainer = "John MacFarlane <jgm@berkeley.edu>";
      author = "John MacFarlane <jgm@berkeley.edu>";
      homepage = "https://pandoc.org";
      url = "";
      synopsis = "Conversion between markup formats";
      description = "Pandoc is a Haskell library for converting from one markup\nformat to another, and a command-line tool that uses\nthis library. It can read several dialects of Markdown and\n(subsets of) HTML, reStructuredText, LaTeX, DocBook, JATS,\nMediaWiki markup, TWiki markup, TikiWiki markup, Creole 1.0,\nHaddock markup, OPML, Emacs Org-Mode, Emacs Muse, txt2tags,\nVimwiki, Word Docx, ODT, and Textile, and it can write\nMarkdown, reStructuredText, XHTML, HTML 5, LaTeX, ConTeXt,\nDocBook, JATS, OPML, TEI, OpenDocument, ODT, Word docx,\nRTF, MediaWiki, DokuWiki, ZimWiki, Textile, groff man,\ngroff ms, plain text, Emacs Org-Mode, AsciiDoc,\nHaddock markup, EPUB (v2 and v3), FictionBook2, InDesign\nICML, Muse, LaTeX beamer slides, PowerPoint, and several\nkinds of HTML/JavaScript slide shows (S5, Slidy, Slideous,\nDZSlides, reveal.js).\n\nIn contrast to most existing tools for converting Markdown\nto HTML, pandoc has a modular design: it consists of a set of\nreaders, which parse text in a given format and produce a\nnative representation of the document, and a set of writers,\nwhich convert this native representation into a target\nformat. Thus, adding an input or output format requires\nonly adding a reader or writer.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = (((([
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.safe)
          (hsPkgs.zip-archive)
          (hsPkgs.HTTP)
          (hsPkgs.texmath)
          (hsPkgs.xml)
          (hsPkgs.split)
          (hsPkgs.random)
          (hsPkgs.pandoc-types)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.tagsoup)
          (hsPkgs.base64-bytestring)
          (hsPkgs.zlib)
          (hsPkgs.skylighting)
          (hsPkgs.data-default)
          (hsPkgs.temporary)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.yaml)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.hslua)
          (hsPkgs.hslua-module-text)
          (hsPkgs.binary)
          (hsPkgs.SHA)
          (hsPkgs.haddock-library)
          (hsPkgs.deepseq)
          (hsPkgs.JuicyPixels)
          (hsPkgs.Glob)
          (hsPkgs.cmark-gfm)
          (hsPkgs.doctemplates)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs.base-compat)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (flags.embed_data_files) (hsPkgs.file-embed);
      };
      exes = {
        "pandoc" = {
          depends  = ([
            (hsPkgs.pandoc)
            (hsPkgs.base)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs.base-compat);
        };
        "trypandoc" = {
          depends  = (pkgs.lib.optionals (flags.trypandoc) [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.pandoc)
            (hsPkgs.text)
            (hsPkgs.wai-extra)
            (hsPkgs.wai)
            (hsPkgs.http-types)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs.base-compat);
        };
      };
      tests = {
        "test-pandoc" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslua)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.Diff)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-golden)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.executable-path)
            (hsPkgs.zip-archive)
            (hsPkgs.xml)
            (hsPkgs.Glob)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs.base-compat);
        };
      };
      benchmarks = {
        "weigh-pandoc" = {
          depends  = ([
            (hsPkgs.pandoc)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.weigh)
            (hsPkgs.mtl)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs.base-compat);
        };
        "benchmark-pandoc" = {
          depends  = ([
            (hsPkgs.pandoc)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.criterion)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs.base-compat);
        };
      };
    };
  }