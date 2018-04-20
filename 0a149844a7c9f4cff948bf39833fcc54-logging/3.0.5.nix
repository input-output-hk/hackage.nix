{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logging";
          version = "3.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "riblankman@gmail.com";
        author = "John Wiegley, Roy Blankman";
        homepage = "";
        url = "";
        synopsis = "Simplified logging in IO for application writers.";
        description = "@logging@ is a wrapper around @fast-logger@ which makes\nit easy to log from 'IO'. It provides the following conveniences on top of\nthose libraries:\n\n- A set of shorter functions to type: 'debug', 'log', 'warn', plus others\nthat flush after each message, or which allow providing a message source\nstring.\n\n- Logging variants of 'error', 'trace' and 'traceShow', called 'errorL',\n'traceL' and 'traceShowL'.  These use 'unsafePerformIO' in order to act as\ndirect replacements, so the usual caveats apply.\n\n- A global function, 'setDebugLevel', which uses a global 'IORef' to record\nthe logging level, saving you from having to carry around the notion of\n\"verbosity level\" in a Reader environment.\n\n- A set of \"timed\" variants, 'timedLog' and 'timedDebug', which report how\nlong the specified action took to execute in wall-clock time.";
        buildType = "Simple";
      };
      components = {
        logging = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.fast-logger
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.monad-control
            hsPkgs.text
            hsPkgs.time-locale-compat
            hsPkgs.transformers
            hsPkgs.lifted-base
            hsPkgs.regex-compat
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.logging
              hsPkgs.unix
              hsPkgs.hspec
            ];
          };
        };
      };
    }