{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "hexpat";
        version = "0.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Doug Beardsley <mightybyte@gmail.com>,\n(c) 2009 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Gregory Collins,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Doug Beardsley,\nStephen Blackheath (blackh),\nGregory Collins,\nEvan Martin,\nMatthew Pocock (drdozer)";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "This package provides a general purpose Haskell XML library using the Expat do\ndo its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML\nparser written in C).  It is extensible to any string type, with @String@,\n@ByteString@ and @Text@ provided out of the box.\n\nBasic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).\n\nOther features: Helpers for processing XML trees (/Proc/), trees annotated with\nXML source location (/Annotated/), XML cursors (/Cursor/), more intelligent\nhandling of qualified tag names (/Qualified/), tags qualified with namespaces\n(/Namespaced/), SAX-style parse (/SAX/), and access to the low-level interface\nin case speed is paramount (/IO/).\n\nThe design goals are speed, speed, speed, interface simplicity and modular design.\n\nExamples and benchmarks: <http://haskell.org/haskellwiki/Hexpat/>\n\nDARCS repository: <http://code.haskell.org/hexpat/>\n\nCredits to the @xml@ (XML.Light) package for /Proc/ and /Cursor/.";
      buildType = "Simple";
    };
    components = {
      "hexpat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.extensible-exceptions)
        ];
        libs = [ (pkgs.expat) ];
      };
    };
  }