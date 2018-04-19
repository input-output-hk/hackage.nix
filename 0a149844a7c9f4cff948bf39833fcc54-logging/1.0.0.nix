{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "logging";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Simplified logging in IO for application writers.";
        description = "@logging@ is a wrapper around @monad-logger@ and @fast-logger@ which makes\nit easy to log from any 'MonadLogger' environment, or from 'IO'.  It\nprovides the following conveniences on top of those libraries:\n\n- A 'MonadLogger' instance for 'IO'.  Usually this is bad for libraries, but\ncan be very convenience for application writers who know they always want\nto log from IO to the console.  If you need to log to other sources, or to\nmake logging compile-time optional, use @monad-logger@ directly.\n\n- A set of shorter functions to type: 'debug', 'log', 'warn'.\n\n- Logging variants of 'error', 'trace' and 'traceShow', called 'errorL',\n'traceL' and 'traceShowL'.  These use 'unsafePerformIO' in order to act as\ndirect replacements, so the usual caveats apply.\n\n- A global function, 'setDebugLevel', which uses a global 'IORef' to record\nthe logging level, saving you from having to carry around the notion of\n\"verbosity level\" in a Reader environment.\n\n- A set of \"timed\" variants, 'timedLog' and 'timedDebug', which report how\nlong the specified action took to execute in wall-clock time.";
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
            hsPkgs.thyme
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.lifted-base
            hsPkgs.vector-space
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