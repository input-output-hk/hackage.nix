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
    flags = {
      highlighting = false;
      executable = true;
      wrappers = true;
      library = true;
      citeproc = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "open-pandoc"; version = "1.4"; };
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
      "library" = {
        depends = (([
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            ])) ++ (pkgs.lib).optional (flags.highlighting) (hsPkgs."highlighting-kate" or (buildDepError "highlighting-kate"))) ++ (pkgs.lib).optional (flags.citeproc) (hsPkgs."citeproc-hs" or (buildDepError "citeproc-hs"));
        };
      exes = {
        "pandoc" = {
          depends = (pkgs.lib).optional (flags.citeproc) (hsPkgs."citeproc-hs" or (buildDepError "citeproc-hs"));
          };
        "hsmarkdown" = {};
        "markdown2pdf" = {};
        };
      };
    }