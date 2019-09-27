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
      specVersion = "1.22";
      identifier = { name = "dash-haskell"; version = "1.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2014, 2015 John P. Feltz";
      maintainer = "jfeltz@gmail.com";
      author = "John P. Feltz";
      homepage = "http://www.github.com/jfeltz/dash-haskell";
      url = "";
      synopsis = "Convert package Haddock to Dash docsets (IDE docs)";
      description = "A Dash.app docset is a file-layout for allowing easy lookup and\nindexing of programming docs, e.g. API functions and modules. A\nnumber of plugins offer docset lookup in editors such as Emacs and\nVim.  By using this tool, one can convert haskell package haddock(s)\nto docsets.\n\nThe major benefit of dash-haskell, is that once these docsets are\nbuilt, dash tools provide one of the few, if only solutions for\noffline, contextual, and project dependency approximate IDE\ndocumentation for Haskell.\n\nUsage Examples:\n\n>\$ dash-haskell parsec-3.1.5\n\nbuilds:\n\n>./docsets/parsec-3.1.5.docset\n\n>\$ dash-haskell -c foo.cabal -s\n\nbuilds all packages listed as dependencies in the cabal file using atleast the cabal sandbox db\n\nusing the default db ordering (global, sandbox, user).\n\nNote: haddock documentation for the package must first be built prior to calling dash-haskell on it, e.g.\n\n>\$ cabal install --only-dependencies --enable-documentation\n\nVersions:\n\nThe version numbering scheme for this package is defined as follows, given:\n\n>dash-haskell-a.b.c.d\n\na, b index interface or feature changes to the CLI\n\nc, d index bug-fix and documentation updates\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dash-haskell" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."direct-sqlite" or (buildDepError "direct-sqlite"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."haddock-api" or (buildDepError "haddock-api"))
            ];
          buildable = true;
          };
        };
      };
    }