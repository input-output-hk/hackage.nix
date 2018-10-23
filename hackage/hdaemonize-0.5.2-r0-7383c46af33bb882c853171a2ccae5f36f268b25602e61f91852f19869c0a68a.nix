{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hdaemonize";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lana Black <lanablack at amok dot cc>";
      author = "Anton Tayanovskyy, Fred Ross";
      homepage = "http://github.com/greydot/hdaemonize";
      url = "";
      synopsis = "Library to handle the details of writing daemons for UNIX";
      description = "Provides two functions that help writing better UNIX daemons,\ndaemonize and serviced: daemonize does what a daemon should do\n(forking and closing descriptors), while serviced does that and\nmore (syslog interface, PID file writing, start-stop-restart\ncommand line handling, dropping privileges).";
      buildType = "Simple";
    };
    components = {
      "hdaemonize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.hsyslog)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
    };
  }