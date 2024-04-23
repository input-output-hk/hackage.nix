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
      specVersion = "1.22";
      identifier = { name = "dash-haskell"; version = "1.1.0.2"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2014, 2015 John P. Feltz";
      maintainer = "jfeltz@gmail.com";
      author = "John P. Feltz";
      homepage = "http://www.github.com/jfeltz/dash-haskell";
      url = "";
      synopsis = "Convert package Haddock to Dash docsets (IDE docs)";
      description = "A Dash.app docset is a file-layout for allowing easy lookup and\nindexing of programming docs, e.g. API functions and modules. A\nnumber of plugins offer docset lookup in editors such as Emacs and\nVim.  By using this tool, one can convert haskell package haddock(s)\nto docsets.\n\nThe major benefit of dash-haskell, is that once these docsets are\nbuilt, dash tools provide one of the few, if only solutions for\noffline, contextual, and project dependency approximate IDE\ndocumentation for Haskell.\n\nUsage Examples:\n\n>$ dash-haskell parsec-3.1.5\n\nbuilds:\n\n>./docsets/parsec-3.1.5.docset\n\n>$ dash-haskell -c foo.cabal -s\n\nbuilds all packages listed as dependencies in the cabal file, using the\ndefault db ordering (global, sandbox, user).\n\nNote: haddock documentation for the package must first be built prior to calling dash-haskell on it, e.g.\n\n>$ cabal install --only-dependencies --enable-documentation\n\nVersions:\n\nThe version numbering scheme for this package is defined as follows, given:\n\n>dash-haskell-a.b.c.d\n\na, b index interface or feature changes to the CLI\n\nc, d index bug-fix and documentation updates\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dash-haskell" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
          ];
          buildable = true;
        };
      };
    };
  }