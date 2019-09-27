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
      specVersion = "1.18";
      identifier = { name = "dash-haskell"; version = "1.0.0.4"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2014 John P. Feltz";
      maintainer = "jfeltz@gmail.com";
      author = "John P. Feltz";
      homepage = "http://www.github.com/jfeltz/dash-haskell";
      url = "";
      synopsis = "Command line tool to generate Dash docsets (IDE docs) from package haddock";
      description = "Dash is a framework and file format for allowing easy lookup and indexing of\nprogramming docs, e.g. API functions and modules. A number of plugins offer dash docset\nlookup in editors such as Emacs and Vim.  By using this tool, one can\nconvert haskell package haddock(s) to docsets.\n\nThe major benefit of dash-haskell, is that once these docsets are built, dash tools\nprovide one of the few, if only solutions for offline, contextual, and project dependency\napproximate IDE documentation for Haskell.\n\nSummary:\n\n> \$ dash-haskell --help\n> Usage: dash-haskell [-p|--dbprovider <provider,args>] [-o|--output <dir>]\n>                     [-q|--quiet] [-c|--cabal <file.cabal>]\n>                     [-r|--cabal-constraints executable=name, ..] [packages]\n>   additional help is also available on arguments with \"dash-haskell help arg\"\n> Available options:\n>   -h,--help                Show this help text\n>   -p,--dbprovider <provider,args>\n>                            a ghc package db provider: cabal|ghc|dir\n>   -o,--output <dir>        the directory to write created docsets to\n>   -q,--quiet               set to quiet output\n>   -c,--cabal <file.cabal>  the cabal file to source package dependencies from\n>   -r,--cabal-constraints executable=name, ..\n>                            limit package results from a cabal file source, see\n>                            documentation\n>   packages                 a list of packages to specifically build, e.g.\n>                            either-1.0.1 text-1.2.0\n\n> \$ cd foo-1.2.0/\n> \$ dash-haskell -c foo.cabal -o docsets\n> db provider:\n>   lookup strategy: cabal sandbox db index\n>   cmd: cabal\n>   args: sandbox hc-pkg list\n>\n> processing: system-filepath-0.4.12\n>   writing files..\n>   writing plist..\n>   populating database..\n>   finished populating sqlite database..\n>\n> processing: system-fileio-0.3.14\n>   writing files..\n>   writing plist..\n>   populating database..\n>   finished populating sqlite database..\n>\n> processing: pipes-4.1.2\n>   writing files..\n>   writing plist..\n>   populating database..\n>   finished populating sqlite database..\n>\n> warning: failed to process: parsec-3.1.5\n> warning: path errors in pkg conf file:\n>  /home/jpf/local/cabal-sandboxes/dash-haskell/x86_64-linux-ghc-7.8.3-packages.conf.d/parsec-3.1.5-abf7e89cafe4e74712f678cea843c1c8.conf\n> with problem(s):\n>  missing: haddock interface file\n>  missing: html doc dir\n>\n> processing: sqlite-simple-0.4.8.0\n>   writing files..\n>   writing plist..\n>   populating database..\n>   finished populating sqlite database..\n>\n> \$\n\nNotice, the failure of parsec-3.1.5 is illustrated here to show that in this case, dash-haskell depends on haddock documentation being built for the requested package. A possible resolution in this case, if using a sandbox, is:\n\n> \$ cabal install --reinstall parsec-3.1.5 --enable-documentation\n> \$ dash-haskell parsec-3.1.5 -o docsets\n\nVersions:\n\nThe version numbering scheme for this package is defined as follows, given:\n\n>dash-haskell-a.b.c.d\n\na, b index interface or feature changes to the CLI\n\nc, d index bug-fix and documentation updates\n";
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
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."sqlite-simple" or (buildDepError "sqlite-simple"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
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