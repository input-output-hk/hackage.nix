{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { no-cli = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "arx"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/arx/";
      url = "";
      synopsis = "Archive execution tool.";
      description = "The @ARX@ system provides services for packaging, deploying and running\nsource code. No particular format or framework is needed -- a directory of\ncode and a command to run are enough. The system has no in-built notion of\nremote connections, job servers or clusters; all automation is captured as\nBourne compatible scripts.\n\nAn archive of the source code, a command and optionally an environment are\nencoded together in a Bourne shell script that uses a small number of UNIX\nutilities in a broadly portable way. The generated scripts can be run\ndirectly or fed to @sh@ on STDIN. This latter feature is useful when one\nwould like to use @ssh@ and @sudo@ to set an appropriate executation\ncontext, for example running: @ssh user\\@example.com sudo sh@.\n\nThe shell tools used are @head@, @sed@, @date@, @tr@ and @tar@. The calls to\n@tar@ sometimes use @-j@ and @-z@; these calls to @tar@ may result in calls\nto @bzip2@ and @gzip@. Scripts have been tested with @dash@ and the GNU\ntools as well as the @sh@ and tools that are part of @busybox@.\n\nThe @arx@ command line tool provides the @tmpx@ subcommand for preparing\njobs to run and the @shdat@ subcommand for access to the low-level shell\nencoder. The @System.Posix.ARX@ module provides access to the routines used\nfor constructing commands and environments, describing archives and building\nBourne shell scripts.\n\nOne way I have used @arx@ is to test the Cabal source archive for this\npackage:\n\n@\narx tmpx .\\/dist\\/arx-* \\/\\/ 'cd arx-* && cabal configure && cabal build' | sh\n@\n\nThere are binary @arx@ command line tool releases available from:\n\n<https://github.com/solidsnack/arx/downloads>\n\nFor each supported platform, there is an archive containing @arx@ and\nsignature files (SHA 512 and GPG).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring-nums)
          (hsPkgs.file-embed)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.shell-escape)
          (hsPkgs.template-haskell)
          (hsPkgs.hashable)
          ];
        };
      exes = {
        "arx" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring-nums)
            (hsPkgs.file-embed)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.shell-escape)
            (hsPkgs.template-haskell)
            (hsPkgs.hashable)
            ];
          };
        };
      };
    }