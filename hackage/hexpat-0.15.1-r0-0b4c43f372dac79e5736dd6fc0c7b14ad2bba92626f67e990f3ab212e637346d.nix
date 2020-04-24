{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hexpat"; version = "0.15.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Doug Beardsley <mightybyte@gmail.com>,\n(c) 2009-2010 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Gregory Collins,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>,\n(c) 2007-2009 Galois Inc.";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath [blackh] (the primary author),\nDoug Beardsley,\nGregory Collins,\nEvan Martin (who started the project),\nMatthew Pocock [drdozer]";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "This package provides a general purpose Haskell XML library using Expat to\ndo its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML\nparser written in C).  It is extensible to any string type, with @String@,\n@ByteString@ and @Text@ provided out of the box.\n\nBasic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).\n\nOther features: Helpers for processing XML trees (/Proc/), trees annotated with\nXML source location (/Annotated/), XML cursors (/Cursor/), more intelligent\nhandling of qualified tag names (/Qualified/), tags qualified with namespaces\n(/Namespaced/), SAX-style parse (/SAX/), and access to the low-level interface\nin case speed is paramount (/IO/).  And, /NodeClass/ contains type classes for\ngeneralized tree processing.\n\nThe design goals are speed, speed, speed, interface simplicity and modularity\n(in that order).\n\nFor introduction and examples, see the /Text.XML.Expat.Tree/ module. For benchmarks,\n<http://haskell.org/haskellwiki/Hexpat/>\n\nThis package provides pure lazy parsing.  However, Haskell's lazy I\\/O is\nproblematic in some applications because it doesn't handle I\\/O errors properly\nand can give no guarantee of timely resource cleanup.  In these cases, chunked\nI\\/O is a better approach: Take a look at the /hexpat-iteratee/ package.\n\nCredits to Iavor Diatchki and the @xml@ (XML.Light) package for /Proc/ and /Cursor/.\n\nINSTALLATION: Unix install requires an OS package called something like @libexpat-dev@.\nOn MacOSX, expat comes with Apple's optional X11 package, or you can install it from source.\nTo install on Windows, first install the Windows binary that's available from\n<http://expat.sourceforge.net/>, then type (assuming you're using v2.0.1):\n\n@cabal install hexpat --extra-lib-dirs=\"C:\\\\Program Files\\\\Expat 2.0.1\\\\Bin\" --extra-include-dirs=\"C:\\\\Program Files\\\\Expat 2.0.1\\\\Source\\\\Lib\"@\n\nEnsure @libexpat.dll@ can be found in your system PATH (or copy it into your executable's directory).\n\nChangeLog: 0.15 changes intended to fix a (rare) \\\"error: a C finalizer called back into Haskell.\\\"\nthat seemed only to happen only on ghc6.12.X; 0.15.1 Fix broken Annotated parse.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."List" or ((hsPkgs.pkgs-errors).buildDepError "List"))
          ];
        libs = [ (pkgs."expat" or ((hsPkgs.pkgs-errors).sysDepError "expat")) ];
        buildable = true;
        };
      };
    }