{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "console-program";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ariep@xs4all.nl";
        author = "Arie Peterson";
        homepage = "";
        url = "";
        synopsis = "Interpret the command line and contents of a config file as commands and options";
        description = "This library provides an infrastructure to build command line programs. It provides the following features:\n\n- declare any number of \\\"commands\\\" (modes of operation) of the program;\n\n- declare options of these commands;\n\n- collect options from a configuration file and the command line, and execute the proper command.\n\n\nExamples of using this library may be found in the Examples directory in the package tarball.\n\n\nIt provides functionality similar to the cmdargs package. Main differences:\n\n- console-program does not use unsafePerformIO, and tries to give a more haskellish, referentially transparent interface;\n\n- it allows a full tree of commands, instead of a list, so a command can have subcommands;\n\n- it parses a configuration file, in addition to the command line arguments.";
        buildType = "Simple";
      };
      components = {
        "console-program" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.fez-conf
            hsPkgs.ansi-wl-pprint
            hsPkgs.ansi-terminal
            hsPkgs.haskeline
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.split
            hsPkgs.parsec
            hsPkgs.parsec-extra
          ];
        };
      };
    }