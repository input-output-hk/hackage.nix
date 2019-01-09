{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "htsn"; version = "0.0.11"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "";
      url = "";
      synopsis = "Parse XML files from The Sports Network feed.";
      description = "/Usage/:\n\n@\nhtsn [OPTIONS] [HOSTNAMES]\n@\n\nThe Sports Network <http://www.sportsnetwork.com/> offers an XML feed\ncontaining various sports news and statistics. The goal of /htsn/\nis to watch the XML feed and parse the individual XML documents into\nfiles.\n\nOnce started, we will choose an XML feed host to connect to. The\nchoice is made from a list in a round-robin fashion, and by default,\nthe list contains all known TSN feed hosts. Once we have a connection,\nyour username and password are sent. If they are accepted, we begin to\nparse the feed saving all XML files to the configured output directory\n(see @--output-directory@).\n\nIf we encounter an error (say, the connection is dropped), then we\nwill attempt to connect to the next host in the list after waiting\nfive seconds. This process continues indefinitely.\n\nThe program can run either interactively (that is, outputting to the\nconsole), or as a daemon with the @--daemonize@ flag.\n\n/Input/:\n\nThe program takes no input; a username and password must be supplied\non the command-line or in a configuration file.\n\n/Output/:\n\nOutput is not generated when running as a daemon; otherwise, standard\nout and standard error are fairly noisy. All traffic between /htsn/ and\nthe feed server is displayed on stdout. Status messages are\ninterspersed when they are generated with warnings and errors going to\nstderr. The following can be expected:\n\n* The only data we send to the feed are the username and password.\nThese will be highlighted in green on stdout.\n\n* All data received from the feed will be echoed in the default color\nto stdout.\n\n* Informational messages will be highlighted in cyan and sent to stdout.\n\n* Warnings will be highlighted in yellow and sent to stderr.\n\n* Errors will be highlighted in red and sent to stderr.\n\n/Logging/:\n\nLogging is done either to syslog or a file. The destination and\nverbosity are controlled by the @--log-file@, @--log-level@,\nand @--syslog@ parameters which may be specified either on the command\nline or in the configuration file.\n\n/Options/:\n\n@\n\\--daemonize, -d\n@\n\nRun as a daemon, in the background. When running as a daemon the\n\\--pidfile, --run-as-group, and --run-as-user flags become relevant.\n\nDefault: disabled\n\n@\n\\--log-file\n@\n\nIf you specify a file here, logs will be written to it (possibly in\naddition to syslog). Can be either a relative or absolute path. It\nwill not be auto-rotated; use something like logrotate for that.\n\nDefault: none\n\n@\n\\--log-level\n@\n\nHow verbose should the logs be? We log notifications at four levels:\nDEBUG, INFO, WARN, and ERROR. Specify the \\\"most boring\\\" level of\nnotifications you would like to receive (in all-caps); more\ninteresting notifications will be logged as well. The debug output is\nextremely verbose and will not be written to syslog even if you try.\n\nDefault: INFO\n\n@\n\\--output-directory, -o\n@\n\nTo which directory should we write the XML files?\n\nDefault: .\n\n@\n\\--password\n@\n\nThe password associated with your TSN username. A password is\nrequired, so you must supply one either on the command line or in a\nconfiguration file.\n\nDefault: none\n\n@\n\\--pidfile\n@\n\n(Daemon mode only) Create a PID file in the given location. This is\nused by the init system on Unix to keep track of the running daemon.\n\nIf necessary, its parent directory will be created with owner/group\nset to the appropriate user/group, but at most one directory will\nbe created (that is, we won't create an entire directory tree).\n\nDefault: \\/run\\/htsn\\/htsn.pid\n\n@\n\\--run-as-group\n@\n\n(Daemon mode only) Run as the given system group. The PID file is\nwritten before privileges are dropped, so the only privileges needed\nby /htsn/ are those necessary to write the XML files and (optionally)\nthe log file.\n\nDefault: the current group\n\n@\n\\--run-as-user\n@\n\n(Daemon mode only) Run as the given system user. The PID file is\nwritten before privileges are dropped, so the only privileges needed\nby /htsn/ are those necessary to write the XML files and (optionally)\nthe log file.\n\nDefault: the current user\n\n@\n\\--syslog, -s\n@\n\nEnable logging to syslog. On Windows this will attempt to communicate\n(over UDP) with a syslog daemon on localhost, which will most likely\nnot work.\n\nDefault: disabled\n\n@\n\\--username, -u\n@\n\nYour TSN username. A username is required, so you must supply one\neither on the command line or in a configuration file.\n\nDefault: none\n\n/Feed Hosts/:\n\nIt is possible to pass a list of feed hostnames on the command-line\n(see [HOSTNAMES] in the synopsis). By default /htsn/ will attempt\nto connect to every known TSN XML feed host in a round-robin fashion,\nso there is rarely a need to do this.\n\n/Configuration File/:\n\nAny of the command-line options mentioned above can be specified in a\nconfiguration file instead. We first look for \\\"htsnrc\\\" in the\nsystem configuration directory. We then look for a file named\n\\\".htsnrc\\\" in the user's home directory. The latter will override\nthe former.\n\nThe user's home directory is simply \$HOME on Unix; on Windows it's\nwherever %APPDATA% points. The system configuration directory\nis determined by Cabal; the /sysconfdir/ parameter during\nthe \\\"configure\\\" step is used.\n\nThe file's syntax is given by examples in the htsnrc.example file\n(included with /htsn/).\n\nOptions specified on the command-line override those in either\nconfiguration file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htsn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hdaemonize)
            (hsPkgs.hslogger)
            (hsPkgs.htsn-common)
            (hsPkgs.hxt)
            (hsPkgs.MissingH)
            (hsPkgs.network)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unix)
            ];
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hdaemonize)
            (hsPkgs.hslogger)
            (hsPkgs.htsn-common)
            (hsPkgs.hxt)
            (hsPkgs.MissingH)
            (hsPkgs.network)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unix)
            ];
          };
        "shelltests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hdaemonize)
            (hsPkgs.hslogger)
            (hsPkgs.htsn-common)
            (hsPkgs.hxt)
            (hsPkgs.MissingH)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }