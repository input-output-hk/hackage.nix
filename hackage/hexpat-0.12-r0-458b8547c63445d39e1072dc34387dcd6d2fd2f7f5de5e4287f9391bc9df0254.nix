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
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "hexpat"; version = "0.12"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Doug Beardsley <mightybyte@gmail.com>,\n(c) 2009-2010 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Gregory Collins,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>,\n(c) 2007-2009 Galois Inc.";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Doug Beardsley,\nStephen Blackheath (blackh),\nGregory Collins,\nEvan Martin,\nMatthew Pocock (drdozer)";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "This package provides a general purpose Haskell XML library using Expat to\ndo its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML\nparser written in C).  It is extensible to any string type, with @String@,\n@ByteString@ and @Text@ provided out of the box.\n\nBasic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).\n\nOther features: Helpers for processing XML trees (/Proc/), trees annotated with\nXML source location (/Annotated/), XML cursors (/Cursor/), more intelligent\nhandling of qualified tag names (/Qualified/), tags qualified with namespaces\n(/Namespaced/), SAX-style parse (/SAX/), and access to the low-level interface\nin case speed is paramount (/IO/).\n\nThe design goals are speed, speed, speed, interface simplicity and modular design.\n\nExamples and benchmarks: <http://haskell.org/haskellwiki/Hexpat/>\n\nDARCS repository: <http://code.haskell.org/hexpat/>\n\nCredits to Iavor Diatchki <iavor.diatchki@gmail.com> and the @xml@ (XML.Light)\npackage for /Proc/ and /Cursor/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
        ];
        libs = [ (pkgs."expat" or (errorHandler.sysDepError "expat")) ];
        buildable = true;
      };
    };
  }