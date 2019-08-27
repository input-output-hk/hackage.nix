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
      identifier = { name = "hexpat"; version = "0.13"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Doug Beardsley <mightybyte@gmail.com>,\n(c) 2009-2010 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Gregory Collins,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>,\n(c) 2007-2009 Galois Inc.";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Doug Beardsley,\nStephen Blackheath (blackh),\nGregory Collins,\nEvan Martin,\nMatthew Pocock (drdozer)";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "This package provides a general purpose Haskell XML library using Expat to\ndo its parsing (<http://expat.sourceforge.net/> - a fast stream-oriented XML\nparser written in C).  It is extensible to any string type, with @String@,\n@ByteString@ and @Text@ provided out of the box.\n\nBasic usage: Parsing a tree (/Tree/), formatting a tree (/Format/).\n\nOther features: Helpers for processing XML trees (/Proc/), trees annotated with\nXML source location (/Annotated/), XML cursors (/Cursor/), more intelligent\nhandling of qualified tag names (/Qualified/), tags qualified with namespaces\n(/Namespaced/), SAX-style parse (/SAX/), and access to the low-level interface\nin case speed is paramount (/IO/).\n\nThe design goals are speed, speed, speed, interface simplicity and modular design.\n\nFor examples, see /Text.XML.Expat.Tree/ module. For benchmarks, <http://haskell.org/haskellwiki/Hexpat/>\n\nCredits to Iavor Diatchki and the @xml@ (XML.Light) package for /Proc/ and /Cursor/.\n\nINSTALLATION: Unix install requires an OS package called something like @libexpat-dev@.\nOn MacOSX, expat comes with Apple's optional X11 package, or you can install it from source.\nTo install on Windows, first install the Windows binary that's available from\n<http://expat.sourceforge.net/>, then type (assuming you're using v2.0.1):\n\n@cabal install hexpat --extra-lib-dirs=\"C:\\\\Program Files\\\\Expat 2.0.1\\\\Bin\" --extra-include-dirs=\"C:\\\\Program Files\\\\Expat 2.0.1\\\\Source\\\\Lib\"@\n\nEnsure @libexpat.dll@ can be found in your system PATH (or copy it into your executable's directory).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
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