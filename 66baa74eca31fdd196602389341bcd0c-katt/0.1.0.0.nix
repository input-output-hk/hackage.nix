{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "katt";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nilsson.dd+code@gmail.com";
        author = "David Nilsson";
        homepage = "https://github.com/davnils/katt";
        url = "";
        synopsis = "Client for the Kattis judge system.";
        description = "Unofficial CLI client for the Kattis online judge system (currently in BETA).\n\nWritten in a git-like fashion, it supports automatic\ndownloading of test cases, easy submissions, and more.\n\nBasically a problem is initialized as follows\n(creates a directory and downloads any available test cases):\n\n> > katt init hello\n> > cd hello\n\nSource files, problem names, and language identification is handled\nautomatically when submitting solutions:\n\n> > vim hello.java\n> > katt submit\n> Made submission 4712\n> Accepted: 1 of 1 test(s) passed\n\nThere is also built-in support for problem sessions,\nwhich initalizes all problems in the problem list.\n\nGet started by downloading a /.kattisrc/ config from\nthe official site, make sure you have the haskell platform\ninstalled, then run /cabal install katt/.\n\nPlease note that the beta release is limited to C, C++ and Java.\nIt also only supports running on unix.";
        buildType = "Simple";
      };
      components = {
        exes = {
          katt = {
            depends  = ([
              hsPkgs.blaze-builder
              hsPkgs.ConfigFile
              hsPkgs.directory
              hsPkgs.errors
              hsPkgs.filepath
              hsPkgs.http-streams
              hsPkgs.HsOpenSSL
              hsPkgs.io-streams
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.unix
              hsPkgs.url
              hsPkgs.zip-archive
            ] ++ [
              hsPkgs.regex-posix
            ]) ++ [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
            ];
          };
        };
      };
    }