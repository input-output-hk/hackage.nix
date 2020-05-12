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
    flags = { base2 = true; buildexamples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bibtex"; version = "0.0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/BibTeX";
      url = "";
      synopsis = "Parse, format and processing BibTeX files";
      description = "This package allows parsing, formatting and processing of BibTeX files.\nBibTeX files are databases for literature for the natbib package\nof the LaTeX typesetting system.\n\nThe package contains two examples:\n\n* The first example demonstrates the BibTeX parser\nby generating a publication overview from a @.bib@ file.\n\n* The second example demonstrates the BibTeX generation\nby producing a large @.bib@ file from the tar archive\nthat cabal-install downloads to your local cabal directory.\n\nBoth examples will be build as stand-alone executable\nwhen running\n\n> cabal install -fbuildExamples bibtex\n\nFor the first example see the \"tex\" directory of this package.\nYou can start the program and build an example document by running\n\n> make pubs\n\nTechnically the program generates a list of custom @\\\\nocite@ commands\nfor the LaTeX package @multibib@.\nYou can add the custom bibtex field @subtype@ to BibTeX entries\nfor more detailed categorization of an entry.\nSee \"tex/publications.bib\" for examples.\n\nThe second example can be executed using\n\n> make hackbib\n\nThe file @hackage.bib@ is written to the current directory.\nThe program reads an uncompressed tar archive from standard input\nand writes the result bibliography file to standard output.\n\nNote that @hackage.bib@ exceeds some limits of standard BibTeX and LaTeX:\nThere are currently much more than 5000 versions of packages,\nthe maximum my BibTeX can handle at once.\nThat is, you can use the bibliography file,\nbut you cannot cite all entries with @\\\\nocite*@.\nIf there are more than 26 uploads by the same author in a year,\nthe BibTeX style @alpha@ generates identifiers including curly braces\nwhich interacts badly with LaTeX's handling of them.\nIf you reduce the Bibliography file to 5000 entries\nand try to generate an overview of all entries with @\\\\nocite@,\nthen @pdflatex@ hits its limits:\n\n> TeX capacity exceeded, sorry [save size=5000]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ] ++ (if flags.base2
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
            ]);
        buildable = true;
        };
      exes = {
        "publication-overview" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "hackage-bibtex" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }