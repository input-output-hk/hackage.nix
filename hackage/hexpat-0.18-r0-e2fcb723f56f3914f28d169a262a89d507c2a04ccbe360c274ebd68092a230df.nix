let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hexpat"; version = "0.18"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Doug Beardsley <mightybyte@gmail.com>,\n(c) 2009-2010 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Gregory Collins,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>,\n(c) 2007-2009 Galois Inc.";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath [blackh] (the primary author),\nDoug Beardsley,\nGregory Collins,\nEvan Martin (who started the project),\nMatthew Pocock [drdozer]";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "XML parser/formatter based on expat";
      description = "This package provides a general purpose Haskell XML library using Expat to\ndo its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML\nparser written in C).  It is extensible to any string type, with @String@,\n@ByteString@ and @Text@ provided out of the box.\n\nBasic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).\nOther features: Helpers for processing XML trees (/Proc/), trees annotated with\nXML source location (/Annotated/), XML cursors (/Cursor/), SAX-style parse (/SAX/),\nand access to the low-level interface in case speed is paramount (/Internal.IO/).\n\nThe design goals are speed, speed, speed, interface simplicity and modularity.\n\nFor introduction and examples, see the /Text.XML.Expat.Tree/ module. For benchmarks,\n<http://haskell.org/haskellwiki/Hexpat/>\n\nIf you want to do interactive I\\/O, an obvious option is to use lazy parsing\nwith one of the lazy I\\/O functions such as hGetContents.  However, this can be\nproblematic in some applications because it doesn't handle I\\/O errors properly\nand can give no guarantee of timely resource cleanup.  In these cases, chunked\nI\\/O is a better approach: Take a look at the /hexpat-iteratee/ package.\n\n/IO/ is filed under /Internal/ because it's low-level and most users won't want\nit.  The other /Internal/ modules are re-exported by /Annotated/ and /Tree/,\nso you won't need to import them directly.\n\nCredits to Iavor Diatchki and the @xml@ (XML.Light) package for /Proc/ and /Cursor/.\n\nINSTALLATION: Unix install requires an OS package called something like @libexpat-dev@.\nOn MacOSX, expat comes with Apple's optional X11 package, or you can install it from source.\nTo install on Windows, first install the Windows binary that's available from\n<http://expat.sourceforge.net/>, then type (assuming you're using v2.0.1):\n\n@cabal install hexpat --extra-lib-dirs=\"C:\\\\Program Files\\\\Expat 2.0.1\\\\Bin\" --extra-include-dirs=\"C:\\\\Program Files\\\\Expat 2.0.1\\\\Source\\\\Lib\"@\n\nEnsure @libexpat.dll@ can be found in your system PATH (or copy it into your executable's directory).\n\nChangeLog: 0.15 changes intended to fix a (rare) \\\"error: a C finalizer called back into Haskell.\\\"\nthat seemed only to happen only on ghc6.12.X; 0.15.1 Fix broken Annotated parse;\n0.16 switch from mtl to transformers; 0.17 fix mapNodeContainer & rename some things.;\n0.18 rename defaultEncoding to overrideEncoding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."List" or (buildDepError "List"))
          ];
        libs = [ (pkgs."expat" or (sysDepError "expat")) ];
        };
      };
    }