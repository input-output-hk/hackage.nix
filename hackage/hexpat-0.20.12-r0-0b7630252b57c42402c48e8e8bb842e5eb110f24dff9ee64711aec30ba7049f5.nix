{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { bundle = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hexpat"; version = "0.20.12"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Doug Beardsley <mightybyte@gmail.com>,\n(c) 2009-2012 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Gregory Collins,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>,\n(c) 2007-2009 Galois Inc.,\n(c) 2010 Kevin Jardine,\n(c) 2012 Simon Hengel";
      maintainer = "Stephen Blackheath <hexpat2.stephen@blacksapphire.com>";
      author = "Stephen Blackheath [blackh] (the primary author),\nDoug Beardsley,\nGregory Collins,\nEvan Martin (who started the project),\nMatthew Pocock [drdozer],\nKevin Jardine,\nJacob Stanley,\nSimon Hengel";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "XML parser/formatter based on expat";
      description = "This package provides a general purpose Haskell XML library using Expat to\ndo its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML\nparser written in C).  It is extensible to any string type, with @String@,\n@ByteString@ and @Text@ provided out of the box.\n\nBasic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).\nOther features: Helpers for processing XML trees (/Proc/), trees annotated with\nXML source location (/Annotated/), extended XML trees with comments,\nprocessing instructions, etc (/Extended/), XML cursors (/Cursor/),\nSAX-style parse (/SAX/), and access to the low-level interface in case speed\nis paramount (/Internal.IO/).\n\nThe design goals are speed, speed, speed, interface simplicity and modularity.\n\nFor introduction and examples, see the /Text.XML.Expat.Tree/ module. For benchmarks,\n<http://haskell.org/haskellwiki/Hexpat/>\n\nIf you want to do interactive I\\/O, an obvious option is to use lazy parsing\nwith one of the lazy I\\/O functions such as hGetContents.  However, this can be\nproblematic in some applications because it doesn't handle I\\/O errors properly\nand can give no guarantee of timely resource cleanup. Because of the generalized\nlist, Hexpat is designed to allow for chunked I/O, but as of this writing I haven't\ndone a nice integration with enumerator and friends.\n\n/IO/ is filed under /Internal/ because it's low-level and most users won't want\nit.  The other /Internal/ modules are re-exported by /Annotated/, /Tree/ and /Extended/,\nso you won't need to import them directly.\n\nIf you have trouble building on Windows, you can try the bundle flag. This will\nmake it build from the source of libexpat builded inside the hexpat package:\ncabal install -f bundle hexpat\n\nCredits to Iavor Diatchki and the @xml@ (XML.Light) package for /Proc/ and /Cursor/.\nThanks to the many contributors.\n\nChangeLog: 0.15 changes intended to fix a (rare) \\\"error: a C finalizer called back into Haskell.\\\"\nthat seemed only to happen only on ghc6.12.X; 0.15.1 Fix broken Annotated parse;\n0.16 switch from mtl to transformers; 0.17 fix mapNodeContainer & rename some things.;\n0.18 rename defaultEncoding to overrideEncoding. 0.18.3 formatG and indent were demanding list\nitems more than once (inefficient in chunked processing); 0.19 add Extended.hs;\n0.19.1 fix a memory leak introduced in 0.19, delegate parsing to bound thread\nif unbound (see note above); 0.19.2 include expat source code so \\'cabal install\\' just works\non Linux, Mac and Windows (thanks Jacob Stanley); 0.19.3 fix misconfiguration of expat\nwhich broke entity parsing; 0.19.4 bump version constraint for text; 0.19.5 bump text\nto < 0.12 and fix text-0.10.0.1 breakage; 0.19.6 dependency breakage with List;\n0.19.7 ghc-7.2.1 compatibility; 0.19.8 fix space leak on lazy parse under ghc-7.2.1;\n0.19.9 fix formatting of > character + improve performance; 0.19.10 ghc-7.4.x compatibility;\n0.20.1 fix an unfortunate crash when used in parallel processing and greatly improve\nperformance; 0.20.2 make parseSaxG lazier; 0.20.3 minor build issues; 0.20.4 remove\ndependency on extensible-exceptions; 0.20.5 bump text upper bound; 0.20.6 bump text again\nto include 1.1.x.x; 0.20.7 bump text again for 1.2.x.x; 0.20.8 bump utf8-string dep;\n0.20.9 bump deepseq dep/ghc-7.10 compatibility.; 0.20.10 increase dependency upper bounds;\n0.20.11 update to libexpat-2.2.1 which includes several security fixes;\n0.20.12 add flag so cabal install -f-bundle hexpat will use the system expat instead\nof the bundled one.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."List" or (errorHandler.buildDepError "List"))
        ];
        libs = pkgs.lib.optional (!flags.bundle) (pkgs."expat" or (errorHandler.sysDepError "expat"));
        buildable = true;
      };
    };
  }