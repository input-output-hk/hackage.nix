{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hdaemonize";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Fred Ross <madhadron at gmail dot com>";
      author = "Anton Tayanovskyy, Fred Ross";
      homepage = "http://github.com/madhadron/hdaemonize";
      url = "";
      synopsis = "Library to handle the details of writing daemons for UNIX";
      description = "Provides two functions that help writing better UNIX daemons,\ndaemonize and serviced: daemonize does what a daemon should do\n(forking and closing descriptors), while serviced does that and\nmore (syslog interface, PID file writing, start-stop-restart\ncommand line handling, dropping privileges).";
      buildType = "Simple";
    };
    components = {
      "hdaemonize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.haskell98)
          (hsPkgs.hsyslog)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
    };
  }