{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "console-program";
          version = "0.4.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ariep@xs4all.nl";
        author = "Arie Peterson";
        homepage = "";
        url = "";
        synopsis = "Interpret the command line and a config file as commands and options";
        description = "This library provides a framework to build command line programs.\n\n\nThe constructed program can have several \\\"commands\\\" that provide different modes of operation.\nOptions can be declared to allow fine-tuning of the behaviour of the program.\nThese options are read from the command line when running the program\nand from a simple configuration file.\n\n\nAdditionally, there is an interactive mode that reads and executes commands from standard input.\n\n\nExamples of using this library may be found in the Examples directory in the package tarball.\n\n\nIt provides functionality similar to the cmdargs package. Main differences:\n\n- console-program does not use unsafePerformIO, and tries to give a more haskellish, referentially transparent interface;\n\n- it allows a full tree of commands, instead of a list, so a command can have subcommands;\n\n- it parses a configuration file, in addition to the command line arguments.";
        buildType = "Simple";
      };
      components = {
        "console-program" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.ansi-wl-pprint
            hsPkgs.ansi-terminal
            hsPkgs.haskeline
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.split
            hsPkgs.parsec
            hsPkgs.parsec-extra
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }