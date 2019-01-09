{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "dash-haskell"; version = "1.0.0.2"; };
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
            (hsPkgs.Cabal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.direct-sqlite)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.ghc)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.process)
            (hsPkgs.sqlite-simple)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            (hsPkgs.haddock-api)
            ];
          };
        };
      };
    }