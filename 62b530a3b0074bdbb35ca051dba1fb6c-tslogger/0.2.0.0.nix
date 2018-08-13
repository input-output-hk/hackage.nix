{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tslogger";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peter.p.fogg@gmail.com";
      author = "Ryan Newton, Peter Fogg";
      homepage = "";
      url = "";
      synopsis = "Thread-safe logging, with additional interleaving fuzz-testing.";
      description = "This is a thread-safe logging framework.  It logs to memory, with various\noptions for serializing log messages out to a file or handle.  A verbosity\nlevel controls the quantity of log messages.\nFor debugging, this logging framework can do double-duty by controlling the\ninterleaving of threads which are producing log messages, for the purpose of\nfuzz-testing concurrent interleavings.  This is accomplished by blocking the\nthreads at the point of each logging message, and controlling the order in\nwhich threads (sequentially) unblock.";
      buildType = "Simple";
    };
    components = {
      "tslogger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }