{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hdaemonize-buildfix";
          version = "0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Fred Ross <madhadron at gmail dot com>, Mark Wotton <wotton@gmail.com> (trivial buildfix only)";
        author = "Anton Tayanovskyy, Fred Ross";
        homepage = "http://github.com/madhadron/hdaemonize";
        url = "";
        synopsis = "Library to handle the details of writing daemons for UNIX";
        description = "Provides two functions that help writing better UNIX daemons,\ndaemonize and serviced: daemonize does what a daemon should do\n(forking and closing descriptors), while serviced does that and\nmore (syslog interface, PID file writing, start-stop-restart\ncommand line handling, dropping privileges).";
        buildType = "Simple";
      };
      components = {
        hdaemonize-buildfix = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.hsyslog
            hsPkgs.extensible-exceptions
            hsPkgs.filepath
            hsPkgs.mtl
          ];
        };
      };
    }