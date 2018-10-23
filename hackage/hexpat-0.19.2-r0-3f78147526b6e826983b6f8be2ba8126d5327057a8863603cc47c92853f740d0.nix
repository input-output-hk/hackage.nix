{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hexpat";
        version = "0.19.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Doug Beardsley <mightybyte@gmail.com>,\n(c) 2009-2010 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Gregory Collins,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>,\n(c) 2007-2009 Galois Inc.,\n(c) 2010 Kevin Jardine";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath [blackh] (the primary author),\nDoug Beardsley,\nGregory Collins,\nEvan Martin (who started the project),\nMatthew Pocock [drdozer],\nKevin Jardine";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "XML parser/formatter based on expat";
      description = "This package provides a general purpose Haskell XML library using Expat to\ndo its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML\nparser written in C).  It is extensible to any string type, with @String@,\n@ByteString@ and @Text@ provided out of the box.\n\nBasic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).\nOther features: Helpers for processing XML trees (/Proc/), trees annotated with\nXML source location (/Annotated/), extended XML trees with comments,\nprocessing instructions, etc (/Extended/), XML cursors (/Cursor/),\nSAX-style parse (/SAX/), and access to the low-level interface in case speed\nis paramount (/Internal.IO/).\n\nThe design goals are speed, speed, speed, interface simplicity and modularity.\n\nFor introduction and examples, see the /Text.XML.Expat.Tree/ module. For benchmarks,\n<http://haskell.org/haskellwiki/Hexpat/>\n\nIf you want to do interactive I\\/O, an obvious option is to use lazy parsing\nwith one of the lazy I\\/O functions such as hGetContents.  However, this can be\nproblematic in some applications because it doesn't handle I\\/O errors properly\nand can give no guarantee of timely resource cleanup.  In these cases, chunked\nI\\/O is a better approach: Take a look at the /hexpat-iteratee/ package.\n\n/IO/ is filed under /Internal/ because it's low-level and most users won't want\nit.  The other /Internal/ modules are re-exported by /Annotated/, /Tree/ and /Extended/,\nso you won't need to import them directly.\n\nCredits to Iavor Diatchki and the @xml@ (XML.Light) package for /Proc/ and /Cursor/.\nThanks to the many contributors.\n\nBOUND VS. UNBOUND THREADS: GHC (at least versions 6.12.X) will spawn threads\nif you call a safe FFI callback from an unbound thread.  This can get out of\ncontrol in a busy application.  To avoid this, from version 0.19.1 we now delegate\nprocessing to a single worker thread if the calling thread is not bound.\nThis essentially means that hexpat currently won't exploit multicores very well.\nIt also means that hexpat may be more efficient on threads spawned with forkOS\n(to give you a bound thread) rather than forkIO.\n\nChangeLog: 0.15 changes intended to fix a (rare) \\\"error: a C finalizer called back into Haskell.\\\"\nthat seemed only to happen only on ghc6.12.X; 0.15.1 Fix broken Annotated parse;\n0.16 switch from mtl to transformers; 0.17 fix mapNodeContainer & rename some things.;\n0.18 rename defaultEncoding to overrideEncoding. 0.18.3 formatG and indent were demanding list\nitems more than once (inefficient in chunked processing); 0.19 add Extended.hs;\n0.19.1 fix a memory leak introduced in 0.19, delegate parsing to bound thread\nif unbound (see note above); 0.19.2 include expat source code so \\'cabal install\\' just works\non Linux, Mac and Windows.";
      buildType = "Simple";
    };
    components = {
      "hexpat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.List)
        ];
      };
    };
  }